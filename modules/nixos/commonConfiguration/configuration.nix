# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{...}: {
  imports = [
    ./bootloader.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./users.nix
  ];

  system.stateVersion = "23.11";
}
