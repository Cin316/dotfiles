# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Make unlimited history.
export HISTSIZE=""

# Bash autocompletion from homebrew.
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Set default editor.
export EDITOR=vim

# Tmuxinator autocomplete.
. ~/.bin/tmuxinator.bash

# Enable color.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
