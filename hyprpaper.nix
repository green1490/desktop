{ config, pkgs, ...}:

{
  services.hyprpaper = {
    enable = true;
      settings = {
        preload = [ "/home/green1490/.config/nixos/kitsune.png" ];
        wallpaper = [ ",/home/green1490/.config/nixos/kitsune.png" ];
    };
  };
}
