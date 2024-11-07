# Control-R searches bash history

alias vi="vim"
alias ..="cd .."
alias ...="cd ../.."

alias ll="ls -hlF"
alias la="ls -halF"

alias lt="tree -C -F --dirsfirst --charset=ascii"
alias lt2="lt -L 2"
alias lt3="lt -L 3"
alias lt4="lt -L 4"
alias lt5="lt -L 5"

alias c="tr -d '\n' | pbcopy"

WHITE=$(tput setaf 247)
ORANGE=$(tput setaf 172)
YELLOW=$(tput setaf 190)
BOLD=$(tput bold)
RESET=$(tput sgr0)

#function reset_zshrc () {
#    # 026
#	PS1="${BOLD}${ORANGE}\u ${WHITE}at ${ORANGE}\h ${WHITE}in ${YELLOW}\w ${RESET}$ "
#}
#chpwd_functions+=(reset_zshrc)

#PS1="${BOLD}${ORANGE}\u ${WHITE}at ${ORANGE}\h ${WHITE}in ${YELLOW}\w ${RESET}$ "
#PS1="$BOLD$ORANGE\u \h \w ${RESET} $"
export PS1="\[$BOLD$ORANGE\]\u \[$WHITE\]in \[$ORANGE\]\h \[$WHITE\]at \[$YELLOW\]\w \[$RESET\]$ "


export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"

export PATH="~/local/bin:$PATH"
