{ inputs, outputs, lib, config, pkgs, ...}: {
  imports = [ inputs.ags.homeManagerModules.default ];
  
  nixpkgs.overlays = [ outputs.overlays.additions ];

  home = {
    username = "adriannic";
    homeDirectory = "/home/adriannic";
    packages = with pkgs; [
      outputs.packages.hypr-workspaces
      libsForQt5.dolphin
      libsForQt5.polkit-kde-agent
      libsForQt5.qtstyleplugin-kvantum
      swaynotificationcenter
      wl-clipboard
      wofi
      hyprshot
      catppuccin-cursors.mochaDark
      catppuccin-gtk
      catppuccin-kvantum
      wl-clip-persist
      swww
      networkmanagerapplet
      ydotool
      neofetch
      ranger
      fira-code-nerdfont
    ];
    file = {
      ".bashrc".source = ./dotfiles/.bashrc;
      ".bash_profile".source = ./dotfiles/.bash_profile;
    };
    stateVersion = "23.11";
  };

  gtk = {
    enable = true;
    cursorTheme = {
      name = "Catppuccin-Mocha-Dark-Cursors";
    };
    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "mauve" ];
        variant = "mocha";
      };
    };
  };

  qt.style.name = "kvantum-dark";

  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      withNodeJs = true;
      withPython3 = true;
    };
    home-manager.enable = true;
    git = {
      enable = true;
      userName = "adriannic";
      userEmail = "spamadriannic@gmail.com";
    };
    ags.enable = true;
    gh = {
      enable = true;
    };
    kitty = {
      enable = true;
    };
    pywal.enable = true;
    bottom = {
      enable = true;
      settings.flags = {
        battery = true;
	enable_gpu_memory = true;
      };
    };
    fish.enable = true;
    mpv.enable = true;
    starship = {
      enable = true;
      enableFishIntegration = true;
      enableBashIntegration = true;
    };
    lsd.enable = true;
    ripgrep.enable = true;
  };

  services = {
    cliphist.enable = true;
    swayosd.enable = true;
    playerctld.enable = true;
    udiskie = {
      enable = true;
      automount = true;
      tray = "auto";
      notify = true;
    };
    cbatticon.enable = true;
  };

  xdg.configFile = {
    "hypr/hyprland.conf".source = ./dotfiles/.config/hypr/hyprland.conf;
    "hypr/scripts" = {
      source = ./dotfiles/.config/hypr/scripts;
      recursive = true;
    };
    "ags" = {
      source = ./dotfiles/.config/ags;
      recursive = true;
    };
    "fish" = {
      source = ./dotfiles/.config/fish;
      recursive = true;
    };
    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
    "Kvantum" = {
      source = ./dotfiles/.config/Kvantum;
      recursive = true;
    };
    "mpv" = {
      source = ./dotfiles/.config/mpv;
      recursive = true;
    };
    "pipewire/pipewire.conf.d/99-input-denoising.conf".source = ./dotfiles/.config/pipewire/pipewire.conf.d/99-input-denoising.conf;
    "swaync" = {
      source = ./dotfiles/.config/swaync;
      recursive = true;
    };
    "wofi" = {
      source = ./dotfiles/.config/wofi;
      recursive = true;
    };
    "dolphinrc".source = ./dotfiles/.config/dolphinrc;
    "kdeglobals".source = ./dotfiles/.config/kdeglobals;
    "starship.toml".source = ./dotfiles/.config/starship.toml;
    "astronvim" = {
      source = ./dotfiles/.config/astronvim;
      recursive = true;
    };
    "kitty" = {
      source = ./dotfiles/.config/kitty;
      recursive = true;
    };
    "lsd/config.yaml".source = ./dotfiles/.config/lsd/config.yaml;
    "neofetch/config.conf".source = ./dotfiles/.config/neofetch/config.conf;
    "ranger" = {
      source = ./dotfiles/.config/ranger;
      recursive = true;
    };
    "swaylock" = {
      source = ./dotfiles/.config/swaylock;
      recursive = true;
    };
    "wal" = {
      source = ./dotfiles/.config/wal;
      recursive = true;
      executable = true;
    };
    "kcalcrc".source = ./dotfiles/.config/kcalcrc;
    "mimeapps.list".source = ./dotfiles/.config/mimeapps.list;
  };

}
