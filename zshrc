function get_venv {
	if [ $VIRTUAL_ENV ]; then
		echo ' ('`basename $VIRTUAL_ENV`') '
	else
		echo ''
	fi
}

function get_git {
	#if [ -e .git 2>/dev/null ]; then
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
	PS1="$(get_venv)%F{026}${USERNAME}@${HOST} $(basename "$PWD")%F{red}$(get_git)%F{white} $ "
}

chpwd_functions+=(reset_zshrc)

PS1="$(get_venv)%F{026}${USERNAME}@${HOST} $(basename "$PWD")%F{white} $ "
