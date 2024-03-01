{pkgs, ...}: {
  gtk = {
    cursorTheme = {
      name = "Catppuccin-Mocha-Dark-Cursors";
    };
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Standard-Mauve-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = ["mauve"];
        variant = "mocha";
      };
    };
  };

  qt.style.name = "kvantum-dark";
}
