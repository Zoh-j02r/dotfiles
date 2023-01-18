# .bashrc
	# Rust and arduino variable setup
export CARGO_HOME=$HOME/program/cargo
export RUSTUP_HOME=$HOME/program/rustup
export ARDUINO_DIRECTORIES_DATA=$HOME/.config/arduino
export ARDUINO_DIRECTORIES_DOWNLOADS=$HOME/program/arduino/download
export ARDUINO_DIRECTORIES_USER=$HOME/program/arduino
	# Bash history configuration
HISTSIZE=2000
HISTFILESIZE=2000
HISTCONTROL=ignoredups
	# make script to run this once on installation
		#xdg-user-dirs-update --force
# TODO: find a minimal greeter or auto-start sway if not possible
[[ $- != *i* ]] && return

# TODO: add coloring to other commands Eg. less, cat, ping 
alias ls='ls --color=auto'
# TODO: make bash prompt cool looking 
# SUGGESTION: font-awesome icons??
PS1='[\u@\h \W]\$ '
