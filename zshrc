# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

alias branches="git branch -a"
alias l="ls -a"
alias ll="ls -alFh"

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

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh
