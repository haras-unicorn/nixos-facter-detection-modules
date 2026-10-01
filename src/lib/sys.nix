{ selfLib, ... }:

{
  self.lib.sys = {
    sysfsBusIdToPciId =
      sysFsBusId:
      let
        matched = builtins.match "^[0-9a-fA-F]{4}:([0-9a-fA-F]{2}):([0-9a-fA-F]{2}).([0-7])$" sysFsBusId;
      in
      if matched == null then
        null
      else
        let
          bus = selfLib.hex.hexToDec (builtins.elemAt matched 0);
          dev = selfLib.hex.hexToDec (builtins.elemAt matched 1);
          fn = selfLib.hex.hexToDec (builtins.elemAt matched 2);
        in
        "PCI:${toString bus}:${toString dev}:${toString fn}";
  };
}
