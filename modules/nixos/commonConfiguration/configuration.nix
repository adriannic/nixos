# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./bootloader.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
    ./services.nix
    ./programs.nix
    ./nix.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
  ];

  system.stateVersion = "23.11";
}
