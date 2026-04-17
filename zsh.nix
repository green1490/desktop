{ config, pkgs, ...}:

{
  programs.zsh.oh-my-zsh.enable = true;

  programs.oh-my-posh = {
    enable = true;
    enableZshIntegration = true;
  };
}
