{
  inputs,
  self,
  selfLib,
  lib,
  ...
}:

{
  options.flake = {
    tests = lib.mkOption {
      type = selfLib.types.recursiveAttrsOf lib.types.raw;
      description = "self tests merged attrset";
      default = { };
    };
  };

  config = {
    flake.tests.detection =
      let
        tests =
          builtins.map
            (
              { name, ... }:
              let
                testName = lib.removeSuffix ".json" (lib.removePrefix "report-" name);
                testReportPath = "${self}/test/report-${testName}.json";
                testReport = builtins.fromJSON (builtins.readFile testReportPath);
                testDetectionPath = "${self}/test/detection-${testName}.json";
                testDetectionRead = lib.trim (builtins.readFile testDetectionPath);
                testDetection =
                  if builtins.pathExists testDetectionPath && testDetectionRead != "" then
                    builtins.fromJSON testDetectionRead
                  else
                    { };
              in
              {
                name = testName;
                version = builtins.toString testReport.version;
                system = testReport.system;
                report = testReport;
                expected = testDetection;
              }
            )
            (
              builtins.filter ({ name, value }: value == "regular" && lib.hasPrefix "report" name) (
                lib.attrsToList (builtins.readDir "${self}/test")
              )
            );
      in
      builtins.listToAttrs (
        builtins.map (
          {
            name,
            version,
            report,
            expected,
            ...
          }:
          let
            eval = lib.evalModules {
              modules = builtins.attrValues selfLib.nixosModules ++ [
                selfLib.modules.hardwareFacterReport
                {
                  _file = ./test.nix;
                  key = ./test.nix;

                  hardware.facter = {
                    inherit report;
                  };
                }
              ];
            };

            expr = selfLib.filter.filterAttrsAndListsRecursive (
              name: _: name != "deviceSubmodule" && name != "device"
            ) eval.config.hardware.facter.detection;
          in
          {
            name = "test-${name}-${version}";
            value =
              if expected == { } then
                builtins.throw (
                  "Expected detection for test '${name}' version '${version}' is empty."
                  + " Please put the following in 'test/detection-${name}-${version}.json':"
                  + " '${builtins.toJSON expr}'"
                )
              else
                {
                  inherit expr expected;
                };
          }
        ) tests
      );

    # NOTE: manual instead of automatic with flake-parts
    # because of stack overflow fix with ulimit
    perSystem =
      {
        lib,
        pkgs,
        system,
        ...
      }:
      {
        checks.test =
          let
            overrideInputs = builtins.concatStringsSep " " (
              builtins.map ({ name, value }: "--override-input ${name} ${value}") (lib.attrsToList inputs)
            );
          in
          pkgs.runCommand "tests"
            {
              nativeBuildInputs = [ inputs.nix-unit.packages.${system}.default ];
            }
            ''
              export HOME="$(realpath .)"
              ulimit -s 65535
              nix-unit --eval-store "$HOME" \
                --extra-experimental-features flakes \
                ${overrideInputs} \
                --flake ${self}#tests
              touch $out
            '';
      };
  };
}
