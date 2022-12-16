#!/bin/bash

declare -a options=("neovim"
"i3"
"vim"
"zsh"
"kitty"
"tmux"
"gitconfig"
"gitignore"
"i3status"
"dunst"
"polybar"
"quit"
)

choice=$(echo "$(printf '%s\n' "${options[@]}")" | dmenu -p 'Edit config file: ')
case "$choice" in
	quit)
		echo "Program terminated." && exit 1
		;;
	polybar)
		choice="$HOME/.dotfiles/polybar/config"
		;;
	neovim)
		choice="$HOME/.dotfiles/nvim/init.lua"
		;;
	i3)
		choice="$HOME/.dotfiles/i3/config"
		;;
	vim)
		choice="$HOME/.dotfiles/.vimrc"
		;;
	zsh)
		choice="$HOME/.dotfiles/zsh/.zshrc"
		;;
	kitty)
		choice="$HOME/.dotfiles/kitty/kitty.conf"
		;;
	tmux)
		choice="$HOME/.dotfiles/.tmux.conf"
		;;
	gi.dotfiles)
		choice="$HOME/.dotfiles/.gitconfig"
		;;
	gitignore)
		choice="$HOME/.dotfiles/.gitignore_global"
		;;
	i3status)
		choice="$HOME/.dotfiles/i3status/config"
		;;
	dunst)
		choice="$HOME/.dotfiles/dunst/dunstrc"
		;;
	*)
		exit 1
		;;
esac

kitty -e nvim "$choice"
