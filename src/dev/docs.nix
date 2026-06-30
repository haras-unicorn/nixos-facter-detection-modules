{ self, selfLib, ... }:

{
  perSystem =
    { pkgs, lib, ... }:
    {
      packages = {
        options =
          let
            packages = pkgs.nixosOptionsDoc {
              transformOptions =
                opt:
                opt
                // {
                  visible = opt.visible or true && (builtins.head opt.loc) != "_module";
                  declarations = [ ];
                };
              options =
                let
                  eval = lib.evalModules {
                    modules = [
                      lib.types.noCheckForDocsModule
                      selfLib.modules.hardwareFacterReport
                      self.nixosModules.default
                    ];
                  };
                in
                eval.options;
            };
          in
          packages.optionsCommonMark;

        docs =
          pkgs.runCommand "docs"
            {
              src = self;
              nativeBuildInputs = [ pkgs.mdbook ];
            }
            ''
              mdbook build -d "$out" "$src/docs"
            '';
      };
    };
}
