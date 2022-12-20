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
		choice="$HOME/.config/polybar/config"
		;;
	neovim)
		choice="$HOME/.config/nvim/init.lua"
		;;
	i3)
		choice="$HOME/.config/i3/config"
		;;
	vim)
		choice="$HOME/.vimrc"
		;;
	zsh)
		choice="$HOME/.config/zsh/.zshrc"
		;;
	kitty)
		choice="$HOME/.config/kitty/kitty.conf"
		;;
	tmux)
		choice="$HOME/.tmux.conf"
		;;
	gi.config)
		choice="$HOME/.gitconfig"
		;;
	gitignore)
		choice="$HOME/.gitignore_global"
		;;
	i3status)
		choice="$HOME/.config/i3status/config"
		;;
	dunst)
		choice="$HOME/.config/dunst/dunstrc"
		;;
	*)
		exit 1
		;;
esac

kitty -e chezmoi edit --apply "$choice"
