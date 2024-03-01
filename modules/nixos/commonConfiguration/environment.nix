{
  lib,
  config,
  pkgs,
  ...
}: {
  environment = {
    etc =
      lib.mapAttrs' (name: value: {
        name = "nix/path/${name}";
        value.source = value.flake;
      })
      config.nix.registry;
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };
    systemPackages = with pkgs; [];
    variables = {
      _JAVA_OPTIONS = "-Dawt.useSystemAAFontSettings=lcd";
    };
  };
}
