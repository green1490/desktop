{...}:

let
  path = builtins.path {
    path = ./wallpapers;
  };
in {
  services.wpaperd = {
    enable = true;
    settings = {
      HDMI-A-1 = {
        inherit path;
      };
    };
  };
}
