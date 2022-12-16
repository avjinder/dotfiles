#!/usr/bin/env bash
#
# Plays passed in url. If none provided, allows user to select
# from `.dotfiles/scripts/radio.txt` and plays selection
# 

set -o errexit
set -o nounset
set -o pipefail

if [[ "${TRACE-0}" == "1" ]]; then set -o xtrace; fi
WIDTH_HEIGHT="30%x30%"
readonly XWIN_YWIN="-10-30"
readonly RADIO_FILE="$HOME/radio.txt"

play_yt_mpv() {
	echo "Playing ${2-} ${1-}"
	mpv "$1" -on-all-workspaces --geometry="$WIDTH_HEIGHT$XWIN_YWIN" --ytdl-format="best[height<=720]" --title="mpv pip"
}

play_mpv() {
	echo "Playing $2 $1"
	# mpv "$1" --on-all-workspaces --geometry=30%x30%-10-30 --title="$2"
	mpv "$1" --on-all-workspaces --geometry="$WIDTH_HEIGHT$XWIN_YWIN" --title="mpv pip"
}

usage() {
	cat <<EOM
SYNOPSIS
$(basename "$0") [-h] url

DESCRIPTION
Plays url. Videos play in a window shown in the corner
If no url is provided, it looks for a radio.txt file in "$HOME"
The file should contain urls in the format:
	Title;url

	Example:
	Lofi Girl;https://www.youtube.com/watch?v=jfKfPfyJRdk
	BBC Radio 4;https://stream.live.vc.bbcmedia.co.uk/bbc_radio_fourfm

OPTIONS
-h, --help	Print this help
-s			Play video in a small window
-l			Play video in a large window
url 		Play url
EOM
}

# check passed in options
# if s or l passed then change height & width accordingly
# if h passed, show help
while getopts "slh" opt
do
	case "$opt" in
		s) WIDTH_HEIGHT="20%x20%" ;;
		l) WIDTH_HEIGHT="40%x40%" ;;
		h) usage; exit 0;;
		*) ;;
	esac
done

# set options index after parsing "slh" above
shift $((OPTIND - 1))

if [[ "${1-}" ]]; then
	if [[ "${1}" == *"http"* ]]; then
		play_yt_mpv "$1"
	else
		echo "invalid url: $1"; exit 0
	fi
else
	selected=$(fzf --preview="" -d ';' --with-nth=1 < "$RADIO_FILE")
	# if nothing selected, exeunt
	if [[ -z "$selected" ]]; then
		exit 0
	fi
	title=$(echo "$selected" | cut -d ";" -f 1)
	url=$(echo "$selected" | cut -d ";" -f 2)
	if [[ "$url" == *"youtube"* ]]; then
		play_yt_mpv "$url" "$title"
	else
		play_mpv "$url" "$title"
	fi
fi

