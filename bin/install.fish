#! /usr/bin/fish

echo "status $(status filename)"

set confdir $HOME/.config/confdir
echo loaded
source $confdir/fonts/dotconf.fish

# running main fonction from install.fish files
source $confdir/bin/main.fish

set -e confdir
