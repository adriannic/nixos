{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    inputs.ags.homeManagerModules.default
    ./nixpkgs.nix
    ./style.nix
    ./programs.nix
    ./services.nix
    ./xdg.nix
  ];

  home = {
    file = {
      ".bash_profile".source = ./dotfiles/.bash_profile;
      ".bashrc".source = ./dotfiles/.bashrc;
    };
    homeDirectory = "/home/adriannic";
    packages = with pkgs; [
      alejandra
      catppuccin-cursors.mochaDark
      catppuccin-gtk
      catppuccin-kvantum
      deadnix
      ffmpeg
      gcc
      gnumake
      hyprshot
      libsForQt5.dolphin
      libsForQt5.polkit-kde-agent
      libsForQt5.qtstyleplugin-kvantum
      megacmd
      neofetch
      networkmanagerapplet
      outputs.packages.x86_64-linux.hypr-workspaces
      ranger
      statix
      swaynotificationcenter
      swww
      unzip
      wl-clipboard
      wl-clip-persist
      wofi
      ydotool
    ];
    stateVersion = "23.11";
    username = "adriannic";
  };
}
