{inputs, ...}: {
  imports = [
    inputs.ags.homeManagerModules.default
  ];
  programs = {
    ags.enable = true;
    bat.enable = true;
    bottom = {
      enable = true;
      settings.flags = {
        battery = true;
        enable_gpu_memory = true;
      };
    };
    firefox.enable = true;
    fish.enable = true;
    fzf = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
    };
    gh.enable = true;
    git = {
      enable = true;
      userEmail = "spamadriannic@gmail.com";
      userName = "adriannic";
    };
    home-manager.enable = true;
    kitty.enable = true;
    lsd.enable = true;
    mangohud.enable = true;
    mpv.enable = true;
    neovim = {
      defaultEditor = true;
      enable = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      withNodeJs = true;
      withPython3 = true;
    };
    obs-studio.enable = true;
    pywal.enable = true;
    ripgrep.enable = true;
    starship = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
    };
    thefuck = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
    };
    yt-dlp.enable = true;
    zathura.enable = true;
    zoxide = {
      enable = true;
      enableBashIntegration = true;
      enableFishIntegration = true;
    };
  };
}
