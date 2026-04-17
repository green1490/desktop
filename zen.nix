{config, pkgs, zen-browser, ...}:

{

  imports = [
    zen-browser.homeModules.twilight
  ];
  
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };
}
