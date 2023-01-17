# .bashrc
HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoredups

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
