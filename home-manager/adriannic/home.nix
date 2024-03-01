{
  outputs,
  pkgs,
  ...
}: {
  imports = [
    ./nixpkgs.nix
    ./programs.nix
    ./services.nix
    ./style.nix
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
      glow
      gnumake
      hyprshot
      libsForQt5.dolphin
      libsForQt5.polkit-kde-agent
      libsForQt5.qtstyleplugin-kvantum
      luajitPackages.luarocks
      megacmd
      neofetch
      networkmanagerapplet
      outputs.packages.x86_64-linux.hypr-workspaces
      outputs.packages.x86_64-linux.rebuild
      python3
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
