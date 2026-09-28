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
        pci = if device ? sysfs_bus_id then selfLib.sys.sysfsBusIdToPciId device.sysfs_bus_id else null;
        unix =
          if device ? unix_device_name then
            device.unix_device_name
          else if device ? unix_device_names then
            builtins.head device.unix_device_names
          else
            null;
      };
    in
    {
      options.hardware.facter.hintsV1.graphics.cards.vramMap = lib.mkOption {
        type = lib.types.attrsOf lib.types.ints.unsigned;
        default = { };
        description = ''
          User-provided graphics card VRAM sizes in bytes keyed by PCI id.
          Used to sort `hardware.facter.detection.graphics.cards.byVram` for
          the v1 facter report when upstream detection is unreliable.
        '';
      };

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
                reportInterfaces = lib.filter (interface: (makeGenericDevice interface).unix != "lo") (
                  hardware.network_interface or [ ]
                );

                interfaces = builtins.map (
                  interface:
                  let
                    generic = makeGenericDevice interface;
                  in
                  generic
                  // {
                    name = generic.unix;
                  }
                ) reportInterfaces;
              in
              {
                byModel = interfaces;
                byName = builtins.listToAttrs (
                  builtins.map (interface: {
                    name = interface.unix;
                    value = interface;
                  }) interfaces
                );
              };
          };

          graphics = {
            cards =
              let
                graphicsCardType =
                  graphicsCard:
                  if virtualisation == "wsl" then
                    "dxgkrnl"
                  else
                    let
                      vendor = lib.toLower (graphicsCard.vendor.hex or "");
                    in
                    if vendor == selfLib.vendor.ids.nvidia then
                      "nvidia"
                    else if vendor == selfLib.vendor.ids.amd then
                      "amd"
                    else if vendor == selfLib.vendor.ids.intel then
                      "intel"
                    else
                      "unknown";

                matchNvidiaGraphicsCardDriverList =
                  graphicsCard: driverListName:
                  builtins.any (
                    id: (builtins.match "^pci:.+d.*${id}sv.+$" graphicsCard.module_alias) != null
                  ) selfLib.nvidia.frozen.${driverListName};

                vramMap = config.hardware.facter.hintsV1.graphics.cards.vramMap;

                graphicsCardVram =
                  graphicsCard:
                  if graphicsCard.pci != null && builtins.hasAttr graphicsCard.pci vramMap then
                    vramMap.${graphicsCard.pci}
                  else
                    0;

                reportGraphicsCards = hardware.graphics_card or [ ];

                graphicsCards = builtins.map (
                  graphicsCard:
                  (makeGenericDevice graphicsCard)
                  // rec {
                    type = graphicsCardType graphicsCard;

                    version =
                      if type != "nvidia" then
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

                    open = type == "nvidia" && matchNvidiaGraphicsCardDriverList graphicsCard "open";

                    wayland = !(type == "nvidia" && matchNvidiaGraphicsCardDriverList graphicsCard "legacy");
                  }
                ) reportGraphicsCards;
              in
              {
                byModel = graphicsCards;
                byVram = lib.sort (
                  lhsGraphicsCard: rhsGraphicsCard:
                  graphicsCardVram lhsGraphicsCard > graphicsCardVram rhsGraphicsCard
                ) graphicsCards;
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
                  device: lib.toLower (device.vendor.hex or "") == selfLib.vendor.ids.logitech
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
