{ selfLib, ... }:

{
  self.lib.nixosModules.v1 =
    { config, lib, ... }:
    let
      inherit (config.hardware.facter.report)
        version
        system
        virtualisation
        hardware
        ;

      makeGenericDevice = device: {
        device = device;
        model = device.model or device.device.name or null;
        modules = builtins.filter (module: module != "nouveau") (device.driver_modules or [ ]);
        sys = if device ? sysfs_id then "/sys${device.sysfs_id}" else null;
        dev =
          if
            (device ? class_list && builtins.elem "network_controller" device.class_list)
            || (device ? base_class && device.base_class ? value && device.base_class.value == 263)
          then
            [ ]
          else if device ? unix_device_names then
            device.unix_device_names
          else
            [ ];
        pci =
          if device ? class_list && builtins.elem "pci" device.class_list && device ? sysfs_bus_id then
            selfLib.sys.sysfsBusIdToPciId device.sysfs_bus_id
          else
            null;
      };
    in
    {
      config = lib.mkIf (version == 1) {
        hardware.facter.detection = {
          version = version;
          system = system;
          virtualisation = virtualisation;

          cpu =
            let
              reportCpu = builtins.head hardware.cpu;
            in
            {
              device = reportCpu;
              type =
                if reportCpu.vendor_name == "AuthenticAMD" then
                  "amd"
                else if reportCpu.vendor_name == "GenuineIntel" then
                  "intel"
                else
                  "arm";
              cores = reportCpu.cores or (reportCpu.units or 2 / 2);
              threads = reportCpu.units or reportCpu.siblings or 1;
            };

          memory =
            let
              reportMemory = builtins.head hardware.memory;
            in
            {
              device = reportMemory;
              size =
                let
                  resource = lib.findFirst (resources: resources.type == "phys_mem") null reportMemory.resources;
                in
                if resource != null then resource.range else 0;
            };

          disks =
            let
              reportDisks = hardware.disk or [ ];

              disks = builtins.map (
                device:
                (makeGenericDevice device)
                // {
                  mounts = [ ];
                  paths = device.unix_device_names or [ ];
                  size =
                    let
                      resource = lib.findFirst (
                        resource: resource ? type && resource.type == "size" && resource.unit == "sectors"
                      ) null (device.resources or [ ]);
                    in
                    if resource != null then resource.value_1 * resource.value_2 else 0;
                }
              ) reportDisks;
            in
            {
              byModel = disks;
            };

          network = {
            interfaces =
              let
                reportInterfaces = lib.filter (interface: interface.unix_device_name != "lo") (
                  hardware.network_interface or [ ]
                );

                interfaces = builtins.map (
                  interface:
                  (makeGenericDevice interface)
                  // {
                    name = interface.unix_device_name;
                  }
                ) reportInterfaces;
              in
              {
                byModel = interfaces;
                byName = builtins.listToAttrs (
                  builtins.map (interface: {
                    name = interface.name;
                    value = interface;
                  }) interfaces
                );
              };
          };

          graphics = {
            cards =
              let
                graphicsCardMemoryHeuristic =
                  graphicsCard:
                  lib.foldl' (
                    sum: resource: sum + (if resource ? type && resource.type == "mem" then resource.range or 0 else 0)
                  ) 0 (graphicsCard.resources or [ ]);

                graphicsCardType =
                  graphicsCard:
                  if builtins.match ".*nvidia.*" (graphicsCard.driver or "") != null then
                    "nvidia"
                  else if builtins.match ".*amdgpu.*" (graphicsCard.driver or "") != null then
                    "amd"
                  else if builtins.match ".*i915.*" (graphicsCard.driver or "") != null then
                    "intel"
                  else
                    "unknown";

                matchNvidiaGraphicsCardDriverList =
                  graphicsCard: driverListName:
                  graphicsCard.driver == "nvidia"
                  && (builtins.any (
                    id: (builtins.match "^pci:.+d.*${id}sv.+$" graphicsCard.module_alias) != null
                  ) selfLib.nvidia.frozen.${driverListName});

                reportGraphicsCards = hardware.graphics_card or [ ];

                graphicsCards =
                  builtins.map
                    (
                      graphicsCard:
                      (makeGenericDevice graphicsCard)
                      // {
                        type = graphicsCardType graphicsCard;

                        version =
                          if graphicsCard.driver != "nvidia" then
                            "unknown"
                          else if matchNvidiaGraphicsCardDriverList graphicsCard "open" then
                            "latest"
                          else if matchNvidiaGraphicsCardDriverList graphicsCard "legacy470" then
                            "legacy_470"
                          else if matchNvidiaGraphicsCardDriverList graphicsCard "legacy390" then
                            "legacy_390"
                          else if matchNvidiaGraphicsCardDriverList graphicsCard "legacy340" then
                            "legacy_340"
                          else
                            "production";

                        open = graphicsCard.driver == "nvidia" && matchNvidiaGraphicsCardDriverList graphicsCard "open";

                        wayland =
                          !(graphicsCard.driver == "nvidia" && matchNvidiaGraphicsCardDriverList graphicsCard "legacy");
                      }
                    )
                    (
                      lib.sort (
                        lhsGraphicsCard: rhsGraphicsCard:
                        graphicsCardMemoryHeuristic lhsGraphicsCard > graphicsCardMemoryHeuristic rhsGraphicsCard
                      ) reportGraphicsCards
                    );
              in
              {
                byModel = graphicsCards;
                byVram = graphicsCards;
              };
          };

          monitor.displays =
            let
              reportMonitors = hardware.monitor or [ ];

              monitors =
                lib.sort
                  (
                    lhsMonitor: rhsMonitor:
                    (lhsMonitor.width * lhsMonitor.height) > (rhsMonitor.width * rhsMonitor.height)
                  )
                  (
                    builtins.map (
                      monitor:
                      (makeGenericDevice monitor)
                      // {
                        model = monitor.detail.name or monitor.model;
                        width = monitor.detail.width;
                        height = monitor.detail.height;
                        dpi = monitor.detail.width / (monitor.detail.width_millimetres / 25.4);
                      }
                    ) reportMonitors
                  );
            in
            {
              byModel = monitors;
              bySize = monitors;
            };

          sound = {
            cards =
              let
                reportSoundCards = hardware.sound or [ ];

                soundCards = builtins.map makeGenericDevice reportSoundCards;
              in
              {
                byModel = soundCards;
              };
          };

          typer = {
            keyboards =
              let
                reportTyperKeyboards = hardware.keyboard or [ ];

                typerKeyboards = builtins.map makeGenericDevice reportTyperKeyboards;
              in
              {
                byModel = typerKeyboards;
              };
          };

          pointer = {
            mice =
              let
                reportPointerMice = hardware.mouse or [ ];

                pointerMice = builtins.map makeGenericDevice reportPointerMice;
              in
              {
                byModel = pointerMice;
              };
          };

          bluetooth = {
            receivers =
              let
                reportBluetoothReceivers = hardware.bluetooth or [ ];

                bluetoothReceivers = builtins.map makeGenericDevice reportBluetoothReceivers;
              in
              {
                byModel = bluetoothReceivers;
              };
          };

          logitech = {
            receivers =
              let
                reportLogitechReceivers = lib.filter (
                  device: (device.vendor.name or "") == "Logitech Inc." || device.vendor.value or 0 == 1133
                ) ((hardware.mouse or [ ]) ++ (hardware.keyboard or [ ]));

                logitechReceivers = builtins.map makeGenericDevice reportLogitechReceivers;
              in
              {
                byModel = logitechReceivers;
              };
          };
        };
      };
    };
}
