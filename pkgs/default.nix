{pkgs, ...} @ args:
with args; {
  default = self.packages.x86_64-linux.install;
  hypr-workspaces = pkgs.callPackage ./hypr-workspaces {};
  install = pkgs.writeScriptBin "install" ../install.sh;
}
