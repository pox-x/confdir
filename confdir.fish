#! /run/current-system/sw/bin/fish

set one argv[0]

set confdir $HOME/.config/confdir
set confdirlocal $PWD/.config/confdir
set osr /etc/os-release
set osname $(uname -s)

if test -f $osr
    set versionname $(grep '^NAME=' /etc/os-release | sed -E 's/^NAME="?(.*?)"?$/\1/')
else
    logs "$red Error$zero: files not found in this os status: $status !!!"
end

# running
if test $versionname = NixOS
    source $confdir/bin/nix-install.fish
else
    source $confdirlocal/bin/install.sh
end

set -e osname one versionname
