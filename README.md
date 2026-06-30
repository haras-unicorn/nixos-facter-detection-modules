# NixOS Facter detection modules

A set of NixOS modules that provide NixOS options and config for you to consume ergonomically and configure your NixOS hardware yourself.

## Explanation

I like using nixos-facter to detect hardware in my NixOS configurations but I'm not a fan of the NixOS modules that got upstreamed into nixpkgs.
This is because, in my opinion, the NixOS modules either do stuff I wouldn't do myself or they don't do enough for me to bother with them.
So, instead of actually configuring NixOS via a provided nixos-facter file this repository exposes NixOS options that are inferred from a nixos-facter file that make it easier for you to configure your NixOS machines via a provided nixos-facter file.

A lot of the detection is pretty opinionated but I am not opposed to receiving feedback and pull requests on making it less opinionated.
