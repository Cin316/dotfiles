#!/bin/bash
# .bash_aliases

# File for storing all of my bash aliases.

alias bye="sudo shutdown -h now"
alias ls="ls -G"
alias lsa="ls -a"
alias lsax="ls -Alh"

alias clrdir="clear && pwd && lsax"

alias rmdir="rm -rf"

alias tmux="tmux -2"

#Customize command prompt to be yellow.
export PS1="\[$(tput setaf 3)\]\h:\W \u\\$\[$(tput sgr0)\]\[$(tput sgr0)\] "

cdl() {
	cd "$1"
	ls
}
