#! /run/current-system/sw/bin/fish

set confdir $HOME/.config/confdir
# link nixos title dotconf
source $confdir/fonts/nix-dotconf.fish

# running main fonction from install.fish files
source $confdir/bin/main.fish

set -e confdir
