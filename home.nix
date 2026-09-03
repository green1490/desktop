{ config, pkgs, ...}:

{

  imports = [
    ./helix.nix
    ./anki.nix
    ./starship.nix
    ./fuzzel.nix
    ./zen.nix
    ./ashell.nix
    ./kitty.nix
    ./wpaperd.nix
    ./niri.nix
    ./mako.nix
  ];

  home.username = "green1490";
  home.homeDirectory = "/home/green1490";
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    git
    qbittorrent
    bibata-cursors
    spotify
  ];

  programs.vesktop.enable = true;
  programs.btop.enable = true;
  programs.mpv.enable = true;
  programs.zed-editor.enable = true;
}
