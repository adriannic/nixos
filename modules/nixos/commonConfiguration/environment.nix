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
    systemPackages = with pkgs; [];
    variables = {
      _JAVA_OPTIONS = "-Dawt.useSystemAAFontSettings=lcd";
    };
  };
}
