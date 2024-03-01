{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    dconf.enable = true;
    hyprland.enable = true;
    git = {
      enable = true;
      config = {
        init.defaultBranch = "main";
      };
    };
  };
}