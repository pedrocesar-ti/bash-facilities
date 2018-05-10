## Invoke the global bash completion
if test "$(uname)" = "Darwin"; then
	source /usr/local/etc/bash_completion 
elif test "$(uname)" = "Linux"; then
	source /usr/share/bash-completion/bash_completion
fi

## Include autocompletion for Amazon API commands
complete -C aws_completer aws

## Include rbenv and nodenv
export PATH="$HOME/.pyenv/bin:$HOME/.nodenv/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(nodenv init -)"
eval "$(pyenv init -)"
