{...}:

let
  path = builtins.path {
    path = ./wallpapers;
  };
in {
  services.wpaperd = {
    enable = true;
    settings = {
      any = {
        inherit path;
        duration = "5m";
        sorting = "descending";
      };
    };
  };
}
