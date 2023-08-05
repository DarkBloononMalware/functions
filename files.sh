#!/usr/bin/env bash

DMEDITOR="st -e vim"

declare -a options=(
"dwm - $HOME/.suckless/dev.dwm/config.h"
"st - $HOME/.suckless/dev.st/config.h"
"dwmblocks - #HOME/.suckless/dev.dwmblocks/blocks.h"
"qtile - $HOME/.config/qtile/config.py"
"bash - $HOME/.bashrc"
"picom - $HOME/.config/picom/picom.conf"
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -p 'Edit config ')

if [[ "$choice" == "quit" ]]; then
    echo "Aqui!" && exit 1

elif [ "$choice" ]; then
	cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
	$DMEDITOR "$cfg"

else
    echo "Ok..." && exit 1
fi
