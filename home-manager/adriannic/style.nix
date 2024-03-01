{pkgs, ...}: {
  gtk = {
    cursorTheme.name = "Catppuccin-Mocha-Dark-Cursors";
    enable = true;
    iconTheme.name = "candy-icons";
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
