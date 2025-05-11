# CONFDIR

CONFDIR is an installation module for the .config directory, designed to simplify the setup process.

> !! All .sh file for installation do not work !!
> !! keep trying with fish until it's fixed !!

## installation

. If you want to create a command,
  make sure that the $HOME/bin directory is included in your PATH environment variable.

. Create directory $HOME/.config/confdir
```bash
 mkdir $HOME/bin
```
. Link to your bin directory 
```bash
 ln -s $PWD/confdir.fish $HOME/bin/confdir

```
. Launch Command
```bash
 # if linux, for windows need install wsl
 confdir
```
## Programme

  - [x] fish
  - [x] ghostty
  - [x] nvim
  - [x] tmux
  - [x] polybar
  - [x] picom
  - [x] omf
  - [x] hypr
  - [x] wofi
  - [x] zathura
  - [x] ranger

## Bugs

* If fish error themes try to link,
```bash
  # if harleen 
  $ ln -s $HOME/.local/share/omf/themes/harleen/fish_prompt.fish /fish/functions
```

