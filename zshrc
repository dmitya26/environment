function get_venv {
	if [ $VIRTUAL_ENV ]; then
		echo ' ('`basename $VIRTUAL_ENV`') '
	else
		echo ''
	fi
}

function get_git {
	if [ -e .git 2>/dev/null ]; then
		echo ' ('$(git branch -a | xargs)')'
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
