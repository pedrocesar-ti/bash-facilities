## A better history control
export HISTCONTROL=ignoreboth
export HISTSIZE=100000
export HISTFILESIZE=200000
export TERM=xterm

if test "$(uname)" = "Darwin"; then
	export PATH="$PATH:/usr/local/bin"
fi
