# sets colors to look cool on the terminal
export TERM=screen-256color-bce
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export EDITOR='vim'

# path to top of window
if [ $ITERM_SESSION_ID ]; then
precmd() {
  echo -ne "\033]0;${PWD}\007"
}
fi 

# change prompt
PROMPT=">> "

# zsh case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload -Uz compinit && compinit

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/fraser/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/fraser/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/fraser/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/fraser/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias t="todo.sh"
alias ta="todo.sh add"
alias td="todo.sh do"
alias tls="todo.sh ls"

alias weather='curl wttr.in'
