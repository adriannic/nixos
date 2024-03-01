_: {
  boot.loader = {
    systemd-boot = {
      enable = true;
      editor = false;
      consoleMode = "max";
      configurationLimit = 3;
    };
    efi.canTouchEfiVariables = true;
  };
}
