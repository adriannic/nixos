{pkgs, ...}: {
  users.users.adriannic = {
    isNormalUser = true;
    description = "adriannic";
    extraGroups = ["networkmanager" "wheel" "video"];
    packages = with pkgs; [];
  };

  services.getty.autologinUser = "adriannic";
}
