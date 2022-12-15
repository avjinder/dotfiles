#!/usr/bin/env zsh
# Terminate already running polybar instance
polybar-msg cmd quit
# killall -q polybar

# echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
echo "---" | tee -a /tmp/polybar_top.log /tmp/polybar_bottom.log

# polybar top 2>&1 | tee -a /tmp/polybar_top.log &!
# polybar top 2>&1 | tee -a /tmp/polybar_top.log & disown
polybar top 2>&1 | tee -a /tmp/polybar_top.log &|
polybar bottom 2>&1 | tee -a /tmp/polybar_bottom.log &|

echo "Bars launched..."
