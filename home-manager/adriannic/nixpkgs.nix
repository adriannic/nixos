{
  outputs,
  config,
  ...
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        "freeimage-unstable-2021-11-01"
      ];
    };
    overlays = [outputs.overlays.additions];
  };
}
