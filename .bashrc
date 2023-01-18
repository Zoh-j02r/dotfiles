# .bashrc

export ARDUINO_DIRECTORIES_DATA=$HOME/.config/arduino
export ARDUINO_DIRECTORIES_DOWNLOADS=$HOME/program/arduino/download
export ARDUINO_DIRECTORIES_USER=$HOME/program/arduino

HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoredups

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
