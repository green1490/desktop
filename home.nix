{ config, pkgs, ...}:

{

  imports = [
    ./helix.nix
    ./anki.nix
    ./zsh.nix
    ./fuzzel.nix
    ./hyprland.nix
    ./zen.nix
    ./ashell.nix
    ./hyprpaper.nix
  ];

  home.username = "green1490";
  home.homeDirectory = "/home/green1490";
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    spotify
    git
  ];

  programs.vesktop.enable = true;
  programs.vscode.enable = true;
  programs.btop.enable = true;
  
}
