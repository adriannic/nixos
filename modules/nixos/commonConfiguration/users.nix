{pkgs, ...}: {
  users.users.adriannic = {
    isNormalUser = true;
    description = "adriannic";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [];
  };

  services.getty.autologinUser = "adriannic";
}
