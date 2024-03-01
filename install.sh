#! /usr/bin/env bash
# WARNING: if user and hostname are not already in the flake, you'll have to do it yourself when nvim opens
if [ $# -ne 2 ]; then
	echo "Use: $0 <username> <hostname>" >&2
	exit 1
fi
USER=$1
HOSTNAME=$2

# Clone the repo
nix-shell -p git --command "git clone 'https://github.com/adriannic/nixos' ~/nixos --recursive"

# Edit flake.nix
nix-shell -p git neovim --command "nvim ~/nixos/flake.nix"

# Rebuild system
sudo nixos-rebuild switch --flake ~/nixos#"$HOSTNAME"

# Install home-manager config
nix run home-manager/master --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake ~/nixos?submodules=1#"$USER"

# Install AstroNvim
git clone 'https://github.com/AstroNvim/AstroNvim' ~/.config/nvim
