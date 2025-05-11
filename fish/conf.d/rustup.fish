# source "$HOME/.cargo/env.fish"
if not contains "$HOME/.cargo/bin" $PATH
    set -x PATH "$HOME/.cargo/bin" $PATH
end
