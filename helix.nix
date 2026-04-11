{config, pkgs, ...}:

{
  home.packages = with pkgs; [
    nixd  
  ];
  
  programs.helix = {
    enable = true;  
    languages = {
      language = [{
        name = "nix";
        language-servers = [ "nixd" ];
      }];
      
      language-server.nixd = {
        command = "nixd";
      };
    };
  };
}
