{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  hardware = {
    opengl.enable = true;
    nvidia.modesetting.enable = true;
  };
}
