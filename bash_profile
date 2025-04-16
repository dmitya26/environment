if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

export PATH="/home/dmitri/local/bin:$PATH"
export TERM="kitty"

# Created by `pipx` on 2025-03-27 06:20:31
# export PATH="$PATH:/home/dmitri/.local/bin"
