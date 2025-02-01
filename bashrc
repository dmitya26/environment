# Control-R searches bash history

alias vi="vim"
alias ..="cd .."
alias ...="cd ../.."

alias viconf="vi ~/config"
alias ..="cd .."
alias ...="cd ../.."

alias ll="ls -halF"
alias la="ls -halF"

alias lt="tree -C -F --dirsfirst --charset=ascii"
alias lt2="lt -L 2"
alias lt3="lt -L 3"
alias lt4="lt -L 4"
alias lt5="lt -L 5"

WHITE=$(tput setaf 247)
ORANGE=$(tput setaf 172)
YELLOW=$(tput setaf 190)
BOLD=$(tput bold)
RESET=$(tput sgr0)

export PS1="\[$BOLD$ORANGE\]\u \[$WHITE\]in \[$ORANGE\]\h \[$WHITE\]at \[$YELLOW\]\w \[$RESET\]$ "

export KITTY_CONFIG_DIRECTORY="/home/dmitri/.config/kitty"
