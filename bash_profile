if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi
export PATH="/home/dmitri/local/bin:$PATH"
export TERM="kitty"
