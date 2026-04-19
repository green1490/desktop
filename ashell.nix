{config, pkgs, ...}:

{
  programs.ashell = {
    enable = true;
    settings = {
      modules = {
        center = [
          "WindowTitle"
        ];
        left = [
          "Workspaces"
        ];
        right = [
          "SystemInfo"
          [
            "Clock"
            "Privacy"
            "Settings"
            "Tray"
          ]
        ];
      };
      appearance = {
        primary_color = "#5d8e8b";
        success_color = "#9ece6a";
        text_color = "#a9b1d6";
        workspace_colors = [
          "#5d8e8b"
          "#9ece6a"
        ];
        danger_color = {
          base = "#f7768e";
          weak = "#e0af68";
        };
        background_color = {
          base = "#1a1b26";
          weak = "#24273a";
          strong = "#414868";
        };
        secondary_color = {
          base = "#0c0d14";
        };
      };
    };
  };
}
