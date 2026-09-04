{...}:

let
  path = builtins.path {
    path = ./wallpaper.png;
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
