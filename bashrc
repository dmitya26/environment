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
function reset_zshrc () {
    if ! [ -z $TMUX ]; then
        tmux set -qg status-left "$(pwd)"
    fi
    # 026
    PS1="$(get_venv)%F{026}${USERNAME}@${HOST} $(basename "$PWD")%F{red}$(get_git)%F{WHITE} $ "
}
chpwd_functions+=(reset_zshrc)


WHITE=$(tput setaf 247)
ORANGE=$(tput setaf 172)
YELLOW=$(tput setaf 190)
BOLD=$(tput bold)
RESET=$(tput sgr0)

export PS1=$(cat <<EOF
${BOLD}${ORANGE}\u ${WHITE}at ${ORANGE}\h ${WHITE}in ${YELLOW}\w ${RESET}@ \$(date +'%H:%M:%S %Z')
$ 
EOF
)


export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"

set show-all-if-ambiguous on

cat >> ~/.inputrc <<'EOF'
"\e[A": history-search-backward
"\e[B": history-search-forward
EOF


export PATH="~/local/bin:$PATH"
