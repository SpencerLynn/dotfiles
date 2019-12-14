. ~/.aliases
. ~/.zsh_prompt

# Case-insensitive tab completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

precmd() {
    echo -ne "\e]1;${PWD/#$HOME/~}\a"
}