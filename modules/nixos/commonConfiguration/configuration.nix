# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, outputs, lib, config, pkgs, ... }:

{
  imports = [
    ./bootloader.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
    ./services.nix
  ];

  programs = {
    dconf.enable = true;
    hyprland.enable = true;
    git = {
      enable = true;
      config = {
        init.defaultBranch = "main";
      };
    };
  };

  # Allow unfree packages
  nixpkgs = {
    overlays = [
      outputs.overlays.additions
      outputs.overlays.modifications
    ];
    config.allowUnfree = true;
  };

  nix = {
    registry = (lib.mapAttrs (_: flake: {inherit flake;})) ((lib.filterAttrs (_: lib.isType "flake")) inputs);
    nixPath = [ "/etc/nix/path" ];
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  environment = {
    etc = lib.mapAttrs' (name: value: { name = "nix/path/${name}"; value.source = value.flake; }) config.nix.registry;
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = with pkgs; [];
  };

  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };

  system.stateVersion = "23.11";
}
