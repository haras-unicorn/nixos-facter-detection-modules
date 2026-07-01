{ selfLib, ... }:

{
  flake.nixosModules.default = {
    _file = ./default.nix;
    key = ./default.nix;

    imports = builtins.attrValues selfLib.nixosModules;
  };
}
