#! /usr/bin/bash

set -e

prog="fish ghostty kitty nvim tmux"
FILE=/etc/os-release

if [ ! -f $FILE ]; then
  echo "os-release is not in this os"
else  
  osname=$(cat /etc/os-release | grep "^NAME=" | sed -E 's/^NAME="?(.*?)"?$/\1/')

  if [[ $osname == "mac" ]]; then
    cp -r $prog $USER/.config
  else if [ $1 == "linux" ]; then
    cp -r $prog $HOME/backupGit/testdot/
  else
    echo "bad input enter mac or linux"
  fi
fi 

osname= uname -s
echo "$osname command"

if [[ "Linux" == $osname ]]; then
  echo "$osname \x1b[31m ok\x1b[0m"
  cp -r $prog $HOME/backupGit/testdot/
  echo "saved to $osname .config"
else if [[ "Darwin" == $osname ]];then
  echo "$osname \x1b[31m ok\x1b[0m"
  cp -r $prog $USER/backupGit/testdot/
  echo "saved to $osname .config"
else
  echo "not os in this"
fi
