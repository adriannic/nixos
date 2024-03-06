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
      (catppuccin-kvantum.override {
        accent = "Mauve";
        variant = "Mocha";
      })
      brightnessctl
      deadnix
      discord
      ffmpeg
      gamemode
      gamescope
      gcc
      glow
      gnome.adwaita-icon-theme
      gnumake
      gtk3
      hyprpicker
      hyprshot
      jdk17
      jq
      kdePackages.qt6ct
      kdePackages.qtstyleplugin-kvantum
      libnotify
      libsForQt5.ark
      libsForQt5.dolphin
      libsForQt5.dolphin-plugins
      libsForQt5.kcalc
      libsForQt5.partitionmanager
      libsForQt5.polkit-kde-agent
      libsForQt5.qt5ct
      libsForQt5.qtstyleplugin-kvantum
      luajitPackages.luarocks
      lutris
      mangal
      megacmd
      mypy
      ncdu
      neofetch
      networkmanagerapplet
      nil
      nwg-look
      outputs.packages.x86_64-linux.hypr-workspaces
      outputs.packages.x86_64-linux.rebuild
      outputs.packages.x86_64-linux.yay
      pavucontrol
      python3
      pywalfox-native
      qbittorrent
      ranger
      ripgrep-all
      rustup
      statix
      steam
      swappy
      swaylock-effects
      swaynotificationcenter
      swww
      telegram-desktop
      tldr
      udiskie
      unrar
      unzip
      wev
      whatsapp-for-linux
      wl-clipboard
      wl-clip-persist
      wofi
      xdg-utils
      ydotool
      zip
    ];
    sessionVariables = {
      BROWSER = "firefox";
      CLUTTER_BACKEND = "wayland";
      EDITOR = "nvim";
      GBM_BACKEND = "nvidia-drm";
      __GLX_VENDOR_LIBRARY_NAME = "nvidia";
      GTK_USE_PORTAL = "1";
      _JAVA_AWT_WM_NONREPARENTING = "1";
      LIBVA_DRIVER_NAME = "iHD";
      MOZ_ENABLE_WAYLAND = "1";
      # NIXOS_OZONE_WL = "1";
      # NIXOS_XDG_OPEN_USE_PORTAL = "1";
      # __NV_PRIME_RENDER_OFFLOAD = "1";
      QT_AUTO_SCREEN_SCALE_FACTOR = "1";
      QT_QPA_PLATFORM = "wayland-egl";
      QT_QPA_PLATFORMTHEME = "qt6ct";
      QT_SCALE_FACTOR = "1";
      QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
      SDL_VIDEODRIVER = "wayland";
      TERMINAL = "kitty";
      # WLR_NO_HARDWARE_CURSORS = "1";
      WLR_RENDERER = "vulkan";
      XDG_CURRENT_DESKTOP = "Hyprland";
      XDG_SESSION_DESKTOP = "Hyprland";
      XDG_SESSION_TYPE = "wayland";
    };
    stateVersion = "23.11";
    username = "adriannic";
  };
}
