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
      ani-cli
      blueberry
      candy-icons
      catppuccin-cursors.mochaDark
      catppuccin-gtk
      catppuccin-kvantum
      deadnix
      discord
      ffmpeg
      gamemode
      gamescope
      gcc
      glow
      gnumake
      hyprpicker
      hyprshot
      jdk17
      jq
      libsForQt5.ark
      libsForQt5.discover
      libsForQt5.dolphin
      libsForQt5.dolphin-plugins
      libsForQt5.kcalc
      libsForQt5.partitionmanager
      libsForQt5.polkit-kde-agent
      libsForQt5.qtstyleplugin-kvantum
      luajitPackages.luarocks
      lutris
      mangal
      megacmd
      mypy
      ncdu
      neofetch
      networkmanagerapplet
      outputs.packages.x86_64-linux.hypr-workspaces
      outputs.packages.x86_64-linux.rebuild
      pavucontrol
      python3
      pywalfox-native
      qbittorrent
      ranger
      ripgrep-all
      statix
      steam
      swappy
      swaylock-effects
      swaynotificationcenter
      swww
      telegram-desktop
      tldr
      unrar
      unzip
      wev
      whatsapp-for-linux
      wl-clipboard
      wl-clip-persist
      wofi
      ydotool
      zip
    ];
    stateVersion = "23.11";
    username = "adriannic";
  };
}
