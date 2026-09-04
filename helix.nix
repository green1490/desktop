{config, pkgs, ...}:

{  
  programs.helix = {
    enable = true;  
    languages = {
      language = [{
        name = "nix";
        language-servers = [
          "nixd"
          "nil"
        ];
      }];
      
      language-server.nixd = {
        command = "nixd";
      };
    };
  };
}
