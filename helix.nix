{config, pkgs, ...}:

{
  programs.helix = {
    enable = true;
    language = [
      {
        name = "nix";
        language-servers = ["nixd"];
      }
    ];

    language-server.nixd = {
      command = "nixd";
    };
  };
}
