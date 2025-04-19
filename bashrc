# Control-R searches bash history
who | awk '{printf "Logged in as %-5s at %s %s on %s %s\n", $1, $3, $4, $2, $5}'

fd() {
 	find $1 -type f -exec stat --format='%n, %A, %U, %s bytes' {} \;
}

alias vi="vim"
alias ..="cd .."
alias ...="cd ../.."
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
export EDITOR="/usr/bin/vim"

ctags -f "/home/dmitri/tags" --recurse=yes --exclude=local --exclude=go/* --exclude=.git --exclude=.* --exclude=*.rst --exclude=*.md --exclude=*.txt --exclude=.venv --exclude=venv --exclude=build --exclude=bin

