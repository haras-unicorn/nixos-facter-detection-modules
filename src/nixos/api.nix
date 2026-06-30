{
  self.lib.nixosModules.api =
    {
      lib,
      config,
      ...
    }:
    let
      cfg = config.hardware.facter.detection;

      report = config.hardware.facter.report;

      facterDeviceObjectSubmodule = {
        freeformType = lib.types.raw;
      };

      genericDeviceSubmodule = {
        options = {
          device = lib.mkOption {
            type = lib.types.submodule facterDeviceObjectSubmodule;
            description = ''
              Facter device object.
            '';
          };

          model = lib.mkOption {
            type = lib.types.nullOr lib.types.str;
            default = null;
            description = ''
              Device model name.
            '';
          };

          modules = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            default = [ ];
            description = ''
              Device driver kernel modules.
            '';
          };

          sys = lib.mkOption {
            type = lib.types.nullOr lib.types.path;
            default = null;
            description = ''
              Device /sys path.
            '';
          };

          pci = lib.mkOption {
            type = lib.types.nullOr lib.types.str;
            default = null;
            description = ''
              Device PCI id.
            '';
          };

          dev = lib.mkOption {
            type = lib.types.listOf lib.types.path;
            default = [ ];
            description = ''
              Device /dev paths.
            '';
          };
        };
      };

      diskSubmodule = {
        imports = [ genericDeviceSubmodule ];

        options = {
          mounts = lib.mkOption {
            type = lib.types.listOf lib.types.path;
            description = ''
              Paths the disk is mounted on.
            '';
          };

          paths = lib.mkOption {
            type = lib.types.listOf lib.types.path;
            description = ''
              Paths to disk block device.
            '';
          };

          size = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Disk size in bytes.
            '';
          };
        };
      };

      networkInterfaceSubmodule = {
        imports = [ genericDeviceSubmodule ];

        options = {
          name = lib.mkOption {
            type = lib.types.str;
            description = ''
              Network interface name.
            '';
          };
        };
      };

      graphicsCardSubmodule = {
        imports = [ genericDeviceSubmodule ];

        options = {
          type = lib.mkOption {
            type = lib.types.enum [
              "intel"
              "amd"
              "nvidia"
            ];
            description = ''
              Graphics card type.
            '';
          };

          version = lib.mkOption {
            type = lib.types.str;
            description = ''
              Graphics card driver version.
            '';
          };

          open = lib.mkOption {
            type = lib.types.bool;
            description = ''
              Whether the graphics card driver is open source.
            '';
          };

          wayland = lib.mkOption {
            type = lib.types.bool;
            description = ''
              Whether the graphics card supports Wayland.
            '';
          };
        };
      };

      monitorDisplaySubmodule = {
        imports = [ genericDeviceSubmodule ];

        options = {
          width = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Monitor width in pixels.
            '';
          };

          height = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Monitor height in pixels.
            '';
          };

          dpi = lib.mkOption {
            type = lib.types.float;
            description = ''
              Monitor DPI.
            '';
          };
        };
      };

      soundCardSubmodule = genericDeviceSubmodule;

      typerKeyboardSubmodule = genericDeviceSubmodule;

      pointerMouseSubmodule = genericDeviceSubmodule;

      bluetoothReceiverSubmodule = genericDeviceSubmodule;

      usbSubmodule = genericDeviceSubmodule;

      logitechReceiverSubmodule = usbSubmodule;

      subsystemSubmodule = { config, ... }: {
        options = {
          byModel = lib.mkOption {
            type = lib.types.listOf (lib.types.submodule config.deviceSubmodule);
            description = ''
              Devices sorted by model in descending alphabetical order.
            '';
          };

          bySys = lib.mkOption {
            type = lib.types.attrsOf (lib.types.submodule config.deviceSubmodule);
            default = builtins.listToAttrs (
              builtins.map (device: {
                name = device.sys;
                value = device;
              }) (builtins.filter (device: device.sys != null) config.byModel)
            );
            description = ''
              Mapping from /sys path to device.
            '';
          };

          byPci = lib.mkOption {
            type = lib.types.attrsOf (lib.types.submodule config.deviceSubmodule);
            default = builtins.listToAttrs (
              builtins.map (device: {
                name = device.pci;
                value = device;
              }) (builtins.filter (device: device.pci != null) config.byModel)
            );
            description = ''
              Mapping from PCI id to device.
            '';
          };

          byDev = lib.mkOption {
            type = lib.types.attrsOf (lib.types.submodule config.deviceSubmodule);
            default = builtins.listToAttrs (
              builtins.concatMap (
                device:
                builtins.map (dev: {
                  name = dev;
                  value = device;
                }) device.dev
              ) config.byModel
            );
            description = ''
              Mapping from /dev path to device.
            '';
          };

          deviceSubmodule = lib.mkOption {
            type = lib.types.deferredModule;
            internal = true;
          };
        };
      };
    in
    {
      _file = ./api.nix;
      key = ./api.nix;

      options.hardware.facter.detection = {
        version = lib.mkOption {
          type = lib.types.ints.unsigned;
          default = report.version;
          description = ''
            Facter report version.
          '';
        };

        system = lib.mkOption {
          type = lib.types.str;
          description = ''
            Machine system.
          '';
        };

        virtualisation = lib.mkOption {
          type = lib.types.str;
          description = ''
            Machine virtualisation.
          '';
        };

        cpu = {
          device = lib.mkOption {
            type = lib.types.submodule facterDeviceObjectSubmodule;
            description = ''
              Facter CPU device object.
            '';
          };

          type = lib.mkOption {
            type = lib.types.enum [
              "intel"
              "amd"
              "arm"
            ];
            description = ''
              CPU type.
            '';
          };

          cores = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Physical cores available on the machine.
            '';
          };

          threads = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Logical threads available on the machine.
            '';
          };
        };

        memory = {
          device = lib.mkOption {
            type = lib.types.submodule facterDeviceObjectSubmodule;
            description = ''
              Facter memory device object.
            '';
          };

          size = lib.mkOption {
            type = lib.types.ints.unsigned;
            description = ''
              Machine memory in bytes.
            '';
          };
        };

        disks = lib.mkOption {
          default = { };
          description = ''
            Machine disks.
          '';
          type = lib.types.submodule {
            imports = [ subsystemSubmodule ];

            config = {
              deviceSubmodule = diskSubmodule;
            };

            options = {
              byMount = lib.mkOption {
                type = lib.types.attrsOf (lib.types.submodule diskSubmodule);
                default = { };
                description = ''
                  User-provided mapping of mount to disk.
                '';
              };
            };
          };
        };

        network = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = builtins.length cfg.network.interfaces.byModel > 0;
            description = ''
              Whether the machine has network access.
            '';
          };

          interfaces = lib.mkOption {
            default = { };
            description = ''
              Machine network interfaces.
            '';
            type = lib.types.submodule (
              { config, ... }: {
                imports = [ subsystemSubmodule ];

                config = {
                  deviceSubmodule = networkInterfaceSubmodule;
                };

                options = {
                  byName = lib.mkOption {
                    type = lib.types.attrsOf (lib.types.submodule networkInterfaceSubmodule);
                    description = ''
                      Mapping of name to network interface.
                    '';
                  };

                  default = lib.mkOption {
                    type = lib.types.nullOr (lib.types.submodule networkInterfaceSubmodule);
                    default = if (builtins.length config.byModel > 0) then builtins.head config.byModel else null;
                    description = ''
                      User-provided default network interface.
                    '';
                  };
                };
              }
            );
          };
        };

        graphics = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = builtins.length cfg.graphics.cards.byModel > 0;
            description = ''
              Whether the machine has a graphics device.
            '';
          };

          cards = lib.mkOption {
            default = { };
            description = ''
              Machine graphics cards.
            '';
            type = lib.types.submodule (
              { config, ... }: {
                imports = [ subsystemSubmodule ];

                config = {
                  deviceSubmodule = graphicsCardSubmodule;
                };

                options = {
                  byVram = lib.mkOption {
                    type = lib.types.listOf (lib.types.submodule graphicsCardSubmodule);
                    description = ''
                      Graphics cards sorted by VRAM size in descending order.
                    '';
                  };

                  byPort = lib.mkOption {
                    type = lib.types.attrsOf (lib.types.submodule graphicsCardSubmodule);
                    default = { };
                    description = ''
                      User-provided mapping from monitor port to graphics card.
                    '';
                  };

                  default = lib.mkOption {
                    type = lib.types.nullOr (lib.types.submodule graphicsCardSubmodule);
                    default = if (builtins.length config.byVram > 0) then builtins.head config.byVram else null;
                    description = ''
                      User-provided default graphics card.
                    '';
                  };

                  integrated = lib.mkOption {
                    type = lib.types.nullOr (lib.types.submodule graphicsCardSubmodule);
                    default = if (builtins.length config.byVram > 1) then lib.last config.byVram else null;
                    description = ''
                      User-provided integrated graphics card.
                    '';
                  };
                };
              }
            );
          };
        };

        monitor = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = (builtins.length cfg.monitor.displays.bySize) > 0;
            description = ''
              Whether the machine has a monitor.
            '';
          };

          displays = lib.mkOption {
            default = { };
            description = ''
              Machine graphics cards.
            '';
            type = lib.types.submodule (
              { config, ... }:
              {
                imports = [ subsystemSubmodule ];

                config = {
                  deviceSubmodule = monitorDisplaySubmodule;
                };

                options = {
                  bySize = lib.mkOption {
                    type = lib.types.listOf (lib.types.submodule monitorDisplaySubmodule);
                    description = ''
                      Monitor displays sorted by size in pixels in descending order.
                    '';
                  };

                  default = lib.mkOption {
                    type = lib.types.nullOr (lib.types.submodule monitorDisplaySubmodule);
                    default = if (builtins.length config.bySize) > 0 then builtins.head config.bySize else null;
                    description = ''
                      User-provided default monitor display.
                    '';
                  };
                };
              }
            );
          };
        };

        sound = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = (builtins.length cfg.sound.cards.byModel) > 0;
            description = ''
              Whether the machine has a sound card.
            '';
          };

          cards = lib.mkOption {
            default = { };
            description = ''
              Machine sound cards.
            '';
            type = lib.types.submodule {
              imports = [ subsystemSubmodule ];
              config.deviceSubmodule = soundCardSubmodule;
            };
          };
        };

        typer = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = builtins.length cfg.typer.keyboards.byModel > 0;
            description = ''
              Whether the machine has a connected keyboard.
            '';
          };

          keyboards = lib.mkOption {
            default = { };
            description = ''
              Machine typer keyboards.
            '';
            type = lib.types.submodule {
              imports = [ subsystemSubmodule ];
              config.deviceSubmodule = typerKeyboardSubmodule;
            };
          };
        };

        pointer = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = (builtins.length cfg.pointer.mice.byModel) > 0;
            description = ''
              Whether the machine has a connected mouse.
            '';
          };

          mice = lib.mkOption {
            default = { };
            description = ''
              Machine pointer mice.
            '';
            type = lib.types.submodule {
              imports = [ subsystemSubmodule ];
              config.deviceSubmodule = pointerMouseSubmodule;
            };
          };
        };

        bluetooth = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = (builtins.length cfg.bluetooth.receivers.byModel) > 0;
            description = ''
              Whether the machine is capable of bluetooth.
            '';
          };

          receivers = lib.mkOption {
            default = { };
            description = ''
              Machine bluetooth receivers.
            '';
            type = lib.types.submodule {
              imports = [ subsystemSubmodule ];
              config.deviceSubmodule = bluetoothReceiverSubmodule;
            };
          };
        };

        logitech = {
          enable = lib.mkOption {
            type = lib.types.bool;
            default = (builtins.length cfg.logitech.receivers.byModel) > 0;
            description = ''
              Whether the machine has a connected Logitech receiver.
            '';
          };

          receivers = lib.mkOption {
            default = { };
            description = ''
              Machine logitech receivers.
            '';
            type = lib.types.submodule {
              imports = [ subsystemSubmodule ];
              config.deviceSubmodule = logitechReceiverSubmodule;
            };
          };
        };

        capabilities = {
          graphics = lib.mkOption {
            type = lib.types.bool;
            default = cfg.graphics.enable && cfg.monitor.enable;
            description = ''
              Whether the machine is capable of displaying graphics.
            '';
          };

          sound = lib.mkOption {
            type = lib.types.bool;
            default = cfg.sound.enable || cfg.bluetooth.enable;
            description = ''
              Whether the machine is capable of producing sound.
            '';
          };

          listening = lib.mkOption {
            type = lib.types.bool;
            default = cfg.sound.enable || cfg.bluetooth.enable;
            description = ''
              Whether the machine is capable of listening.
            '';
          };

          typing = lib.mkOption {
            type = lib.types.bool;
            default = cfg.typer.enable || cfg.bluetooth.enable || cfg.logitech.enable;
            description = ''
              Whether the machine is capable of being typed into.
            '';
          };

          pointing = lib.mkOption {
            type = lib.types.bool;
            default = cfg.pointer.enable || cfg.bluetooth.enable || cfg.logitech.enable;
            description = ''
              Whether the machine is capable of being pointed into.
            '';
          };

          interaction = lib.mkOption {
            type = lib.types.bool;
            default = cfg.typer.enable || cfg.pointer.enable || cfg.bluetooth.enable || cfg.logitech.enable;
            description = ''
              Whether the machine is capable of being interacted with.
            '';
          };
        };
      };
    };
}
