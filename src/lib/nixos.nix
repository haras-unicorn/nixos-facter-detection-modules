{
  self.lib.modules.hardwareFacterReport = { lib, ... }: {
    _file = ./nixos.nix;
    key = ./nixos.nix;

    options = {
      hardware.facter = {
        report = lib.mkOption {
          type = lib.types.raw;
          description = "Facter report.";
          default = {
            # NOTE: just so we don't trigger any version accidentally
            version = 999;
          };
        };
      };
    };
  };
}
