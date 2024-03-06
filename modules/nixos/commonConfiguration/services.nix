{ pkgs, ... }: {
  services = {
    flatpak.enable = true;
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      jack.enable = true;
      pulse.enable = true;
    };
    tlp.enable = true;
    udisks2.enable = true;
    upower.enable = true;
    xserver.gdk-pixbuf.modulePackages = with pkgs; [ librsvg ];
  };
}
