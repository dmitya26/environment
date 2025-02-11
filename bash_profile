if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

export PATH="/home/dmitri/local/bin:$PATH"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/dmitri/.opam/opam-init/init.sh' && . '/home/dmitri/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration
