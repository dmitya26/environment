alias ls="ls -aF"
function f {
	if [[ "$PWD" = */Desktop/* ]]; then
		cd $(find . -type d -print | fzf --height ~100%)
	else
		cd $(find ~/Desktop -type d -print | fzf --height 100%)
	fi

	ls
}
function get_venv {
	if [ $VIRTUAL_ENV ]; then
		echo ' ('`basename $VIRTUAL_ENV`') '
	else
		echo ''
	fi
}
function get_git {
	if [ "$(git rev-parse --is-inside-work-tree 2>/dev/null)" = "true" ]; then
		echo " ($(git symbolic-ref --short HEAD 2>/dev/null))"
	else
		echo ''
	fi
}
if [[ ! $VIRTUAL_ENV ]]; then
	alias python="python3"
fi
function reset_zshrc () {
	tmux set -qg status-left "$(pwd)"
	PS1="$(get_venv)%F{026}${USERNAME}@${HOST} $(basename "$PWD")%F{red}$(get_git)%F{white} $ "
}
chpwd_functions+=(reset_zshrc)
PS1="$(get_venv)%F{026}${USERNAME}@${HOST} $(basename "$PWD")%F{white} $ "
cd . # A lazy solution to why the git branch in the prompt doesn't load automatically on startup.
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.0.0/bin:$PATH"
