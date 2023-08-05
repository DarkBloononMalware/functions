#!/bin/bash

shutdown=" Encerrar"
reboot=" Reiniciar"
logout="  Terminar Sessão"

# Variable passed to rofi
options="$shutdown\n$reboot\n$logout"

chosen="$(echo -e "$options" | dmenu -i -p "Energia " )"
case $chosen in
    $shutdown)
        sudo shutdown -h now
	;;
    $reboot)
        sudo shutdown -r now
        ;;
    $logout)
        pkill -KILL -u $USER
        ;;
esac
