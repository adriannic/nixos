{pkgs, ...} @ args:
with args; {
  default = self.packages.x86_64-linux.install;
  hypr-workspaces = pkgs.callPackage ./hypr-workspaces {};
  install = pkgs.writeScriptBin "install" ../install.sh;
  rebuild = pkgs.writeShellApplication {
    name = "rebuild";
    text = ''
      pushd ~/nixos
      sudo nixos-rebuild switch --flake .
      home-manager --flake .?submodules=1 switch
      popd
    '';
  };
  yay = pkgs.writeShellApplication {
    name = "yay";
    text = ''
      nix flake update ~/nixos
    '';
  };
}
