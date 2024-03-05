{config, ...}: {
  boot = {
    extraModulePackages = with config.boot.kernelPackages; [v4l2loopback];
    kernelModules = [
      "v4l2loopback"
    ];
    loader = {
      systemd-boot = {
        enable = true;
        editor = false;
        consoleMode = "max";
        configurationLimit = 3;
      };
      efi.canTouchEfiVariables = true;
    };
  };
}
