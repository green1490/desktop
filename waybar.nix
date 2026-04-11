{config, pkgs, ...}:

{
  programs.waybar = {
  enable = true;
  settings = {
    mainBar = {
      layer = "top";
      position = "top";
      height = 24;
      modules-left = [
        "hyprland/workspaces"
        "hyprland/submap"
      ];
      modules-center = ["hyprland/window"];
      modules-right = [
        "pulseaudio"
        "network"
        "cpu"
        "memory"
        "tray"
        "clock"
      ];
      "hyprland/workspaces" = {
        disable-scroll = true;
        all-outputs = false;
        format = "{icon}";
      };
      "hyprland/mode" = {
        format = "<span style=\"italic\">{}</span>";
      };
      tray = {
        spacing = 10;
      };
      clock = {
        format-alt = "{:%Y-%m-%d}";
      };
      cpu = {
        format = "{usage}% ";
      };
      memory = {
        format = "{}% ";
      };
      network = {
        interface = "eno1";
        format-ethernet = "{ifname}: {ipaddr}/{cidr}";
      };
      pulseaudio = {
        format = "{volume}% ";
      };
    };
  };
  style = ''
    * {
      border: none;
      border-radius: 0;
      font-size: 13px;
      min-height: 0;
      font-family: "Jetbrains Mono", monospace;
    }

    window#waybar {
      background: transparent;
      color: white;
    }

    #window {
      font-weight: bold;
      font-family: "Ubuntu";
    }
    /*
    #workspaces {
      padding: 0 5px;
    }
    */

    #workspaces button {
      padding: 0 5px;
      background: transparent;
      color: white;
      border-top: 2px solid transparent;
    }

    #workspaces button.focused {
      color: #c9545d;
      border-top: 2px solid #c9545d;
    }

    #mode {
      background: #64727D;
      border-bottom: 3px solid white;
    }

    #clock, #cpu, #memory, #network, #pulseaudio, #tray, #mode {
      padding: 0 3px;
      margin: 0 2px;
    }

    #clock {
      font-weight: bold;
    }

    @keyframes blink {
      to {
        background-color: #ffffff;
        color: black;
      }
    }

    #cpu {}

    #memory {}

    #network {}

    #pulseaudio {}

    #pulseaudio.muted {}

    #tray {}
    '';
  };
}
