if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

export PATH="/usr/local/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/bin/:$PATH"
export PATH="/Users/dmitri/local:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
