{ config, pkgs, ...}:

{

  imports = [
    ./helix.nix
    ./anki.nix
    ./zsh.nix
    ./wofi.nix
    ./waybar.nix
    ./hyprland.nix
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
  programs.firefox.enable = true;
  programs.btop.enable = true;
  
}
