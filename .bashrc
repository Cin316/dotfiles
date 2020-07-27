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
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Set default editor.
export EDITOR=vim

# Enable editing the bash commandline with vi motions.
set -o vi

# Tmuxinator autocomplete.
if [ -f ~/.bin/tmuxinator.bash ]; then
    . ~/.bin/tmuxinator.bash
fi

# Enable color.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Silence zsh warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Load NVM dir
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
