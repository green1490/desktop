{ config, ...}:

{
    xdg.configFile."niri/config.kdl".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.config/nixos/config.kdl";
}
