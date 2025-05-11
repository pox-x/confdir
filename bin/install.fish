#! /usr/bin/fish

echo "status $(status filename)"

echo loaded
source $HOME/.config/dotconfig/fonts/dotconf.fish

# running main fonction from install.fish files
source $HOME/.config/dotconfig/bin/main.fish
