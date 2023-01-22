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
"mpv"
"rofi"
"quit"
"scripts"
"radio"
)

choice=$(echo "$(printf '%s\n' "${options[@]}")" | dmenu -p 'Edit config file: ')
case "$choice" in
	quit)
		echo "Program terminated." && exit 1
		;;
	polybar)
		# choice="$HOME/.config/polybar/config"
		choice="$HOME/.config/polybar"
		;;
	neovim)
		# choice="$HOME/.config/nvim/init.lua"
		choice="$HOME/.config/nvim"
		;;
	i3)
		# choice="$HOME/.config/i3/config"
		choice="$HOME/.config/i3"
		;;
	vim)
		choice="$HOME/.vimrc"
		;;
	zsh)
		# choice="$HOME/.config/zsh/.zshrc"
		choice="$HOME/.config/zsh"
		;;
	kitty)
		# choice="$HOME/.config/kitty/kitty.conf"
		choice="$HOME/.config/kitty"
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
	mpv)
		choice="$HOME/.config/mpv"
		;;
	rofi)
		choice="$HOME/.config/rofi/config.rasi"
		;;
	scripts)
		choice="$HOME/.local/bin/scripts"
		;;
	radio)
		choice="$HOME/radio.txt"
		;;
	*)
		exit 1
		;;
esac

kitty -e chezmoi edit --apply "$choice"
