# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias branches="git branch -a"
alias l="ls -a"
alias ll="ls -alFh"
alias ard="arduino-cli"

function help() {
	echo "  tmux \n-------------------\n att | tmux attach <SESSION> \n des | tmux kill-session <SESSION> \n det | tmux detach \n lll | tmux list-sessions \n new | new-session <SESSION>"
}

function abs() {
	echo $PWD/$1
}

function att() {
	tmux attach -t $1
}

function des() {
	tmux kill-session -t $1
}

function det() {
	tmux detach
}

function lll() {
	tmux list-sessions
}

function new() {
	tmux new-session -t $1
}

# magenta directory, green git, cyan dollar sign, white text
PROMPT='%{$fg_bold[red]%}%{$fg_bold[green]%}%p %{$fg[magenta]%}%c %{$fg_bold[green]%}$(git_prompt_info)%{$fg_bold[green]%}$(svn_prompt_info)%{$fg_bold[cyan]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}  %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

#ZSH_THEME_SVN_PROMPT_PREFIX="svn:("
#ZSH_THEME_SVN_PROMPT_SUFFIX=")"
ZSH_THEME_SVN_PROMPT_PREFIX=""
ZSH_THEME_SVN_PROMPT_SUFFIX=""

ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%}%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN=""

DISABLE_AUTO_TITLE="true"

plugins=(git)

# Download Znap, if it's not there yet.
#[[ -r ~/Repos/znap/znap.zsh ]] ||
#    git clone --depth 1 -- \
#        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap

source ~/Repos/znap/znap.zsh  # Start Znap
znap source marlonrichert/zsh-autocomplete

source $ZSH/oh-my-zsh.sh
