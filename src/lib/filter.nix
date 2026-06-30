{ selfLib, lib, ... }:

{
  self.lib.filter = {
    filterAttrsAndListsRecursive = lib.fix (
      filterAttrsAndListsRecursive: predicate: value:
      if builtins.isAttrs value then
        builtins.listToAttrs (
          builtins.map ({ name, value }: {
            inherit name;
            value = filterAttrsAndListsRecursive predicate value;
          }) (builtins.filter ({ name, value }: predicate name value) (lib.attrsToList value))
        )
      else if builtins.isList value then
        builtins.map ({ item, ... }: filterAttrsAndListsRecursive predicate item) (
          builtins.filter ({ index, item }: predicate index item) (
            builtins.genList (index: {
              index = index;
              item = builtins.elemAt value index;
            }) (builtins.length value)
          )
        )
      else
        value
    );
  };

  flake.tests = {
    filterAttrsAndListsRecursive =
      let
        filter = selfLib.filter.filterAttrsAndListsRecursive;
      in
      {
        test-attr-keep-all = {
          expr = filter (name: _: true) {
            a = 1;
            b = 2;
          };
          expected = {
            a = 1;
            b = 2;
          };
        };

        test-attr-drop-name = {
          expr = filter (name: _: name != "secret") {
            user = "alice";
            secret = "pass";
            age = 30;
          };
          expected = {
            user = "alice";
            age = 30;
          };
        };

        test-attr-empty = {
          expr = filter (_: _: true) { };
          expected = { };
        };

        test-list-keep-all = {
          expr = filter (_: _: true) [
            "a"
            "b"
            "c"
          ];
          expected = [
            "a"
            "b"
            "c"
          ];
        };

        test-list-drop-index = {
          expr = filter (index: _: index != 1) [
            10
            20
            30
          ];
          expected = [
            10
            30
          ];
        };

        test-list-empty = {
          expr = filter (_: _: true) [ ];
          expected = [ ];
        };

        test-nested-attr = {
          expr = filter (name: value: name != "tmp" && !(builtins.isList value)) {
            keep = 42;
            tmp = "garbage";
            nested = {
              inner = 7;
              tmp = "nested garbage";
            };
          };
          expected = {
            keep = 42;
            nested = {
              inner = 7;
            };
          };
        };

        test-nested-list = {
          expr = filter (index: _: index != 0) [
            { a = 1; }
            { b = 2; }
            { c = 3; }
          ];
          expected = [
            { b = 2; }
            { c = 3; }
          ];
        };

        test-deep-mixed = {
          expr = filter (name: _: name != "remove") {
            data = [
              {
                id = 1;
                remove = "yes";
              }
              {
                id = 2;
                remove = "no";
              }
            ];
            meta = {
              remove = "gone";
              keep = "here";
            };
          };
          expected = {
            data = [
              { id = 1; }
              { id = 2; }
            ];
            meta = {
              keep = "here";
            };
          };
        };

        test-scalar = {
          expr = filter (name: _: name == "only") 1337;
          expected = 1337;
        };

        test-string-as-leaf = {
          expr = filter (_: value: value != "bad") {
            a = "hello";
            b = "bad";
            c = "world";
          };
          expected = {
            a = "hello";
            c = "world";
          };
        };
      };
  };
}
