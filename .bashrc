# .bashrc
# Rust and arduino variable setup
export CARGO_HOME=$HOME/program/cargo
export RUSTUP_HOME=$HOME/program/rustup
export ARDUINO_DIRECTORIES_DATA=$HOME/.config/arduino
export ARDUINO_DIRECTORIES_DOWNLOADS=$HOME/program/arduino/download
export ARDUINO_DIRECTORIES_USER=$HOME/program/arduino
export TEXMFHOME=$HOME/program/tex
# Bash history configuration
HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoredups
# make script to run this once on installation
	#xdg-user-dirs-update --force
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias now='ls -Art | tail -n 1'
PS1='[\u@\h \W]\$ '
. "/home/immr/program/cargo/env"

# On login auto-start sway
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec sway
fi
