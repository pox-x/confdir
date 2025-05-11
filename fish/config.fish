if status is-interactive
    # Mac config exemple
    # Commands to run in interactive sessions can go here

    # if linux uncomment and change with your fish path
    # type ($ whereis fish) for find path
    # uncomment this line if using nixos
    export EDITOR='/run/current-system/sw/bin/nvim'
    alias vo='/run/current-system/sw/bin/nvim'
    #
    # mac editor:
    # export EDITOR='/usr/local/bin/fish'

    # verify if kitten exa nvim tmux fzf and tty-clock is installe in
    # your machine if not install it
    alias nf='nvim $(fzf --preview="bat --color=always {}")'
    alias kit=kitten icat
    alias o='exa -la --icons'

    # alias vo='/usr/local/bin/nvim'
    alias tm='tmux attach-session'
    # neofetch
    alias ty='tty-cock -cs -C7'
    alias g=git

    # get title with env
    # change source by your own
    source "$HOME/Title/poxroom.fish"
    echo $POX

    # export for nixos
    set -x PATH "/run/wrappers/bin:$HOME/.nix-profile/bin:/nix/profile/bin:$HOME/.local/state/nix/profile/bin:/etc/profiles/per-user/$USER/bin:/nix/var/nix/profiles/default/bin:/run/current-system/sw/bin:$HOME/.cargo/bin"

    # export PATH='$HOME/.yarn/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/pox/.cargo/bin'
    alias kit='kitten icat'

    export LESS_THERMCAP_mb='\e[1;32m'
    export LESS_THERMCAP_md='\e[1;32m'
    export LESS_THERMCAP_me='\e[0m'
    export LESS_THERMCAP_se='\e[0m'
    export LESS_THERMCAP_so='\e[1;32m'
    export LESS_THERMCAP_ue='\e[0m'
    export LESS_THERMCAP_us='\e[1;4;31m'


    # create a bin files that cant be used for personal prog
    # set -gx PATH $PATH:$HOME/bin
    set -gx PATH $PATH:$HOME/local/bin

    # source ~/.asdf/asdf.fish

    # Uncomment if using cairo env
    # alias cairov="source $HOME/cairo_venv/bin/activate.fish"

    # if you want use brew uncomment this only for linux 
    # or eval with your own path
    # check if homebrew was installed
    # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

    # need to check if install zoxide and uncomment this line 

    # special for nixos 
    # uncomment for path nixos

    export PATH="$PATH:$HOME/bin"
    eval "$(zoxide init fish)"

    # launch ssh at each fish 
    if not pgrep ssh-agent >/dev/null
    end
    # uncomment for install any-nix-shell
    # nix-env -iA nixpkgs.any-nix-shell
    any-nix-shell fish --info-right | source

    # set agent-ssh launch at each fish 
    set -Ux SSH_AUTH_SOCK (ssh-agent -c | grep -oE '/tmp/ssh-[^;]+' | head -n1)

end
# bun.js
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by LM Studio CLI (lms)
set -gx PATH $PATH $HOME/.lmstudio/bin
