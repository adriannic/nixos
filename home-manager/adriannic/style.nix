{pkgs, ...}: {
  dconf = {
    enable = true;
    settings = {
      # "org/gnome/desktop/background".picture-uri-dark = "file://${pkgs.nixos-artwork.wallpapers.nineish-dark-gray.src}";
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        theme = "Catppuccin-Mocha-Standard-Mauve-Dark";
      };
    };
  };

  gtk = {
    cursorTheme.name = "Catppuccin-Mocha-Dark-Cursors";
    enable = true;
    gtk3.extraConfig.Settings = ''
      gtk-application-prefer-dark-theme=1
      gtk-cursor-theme-name=Catppuccin-Mocha-Dark-Cursors
    '';
    gtk4.extraConfig.Settings = ''
      gtk-application-prefer-dark-theme=1
      gtk-cursor-theme-name=Catppuccin-Mocha-Dark-Cursors
    '';
    iconTheme.name = "candy-icons";
    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = ["mauve"];
        variant = "mocha";
      };
    };
  };

  # qt = {
  #   enable = true;
  #   platformTheme = "qtct";
  # };
}
