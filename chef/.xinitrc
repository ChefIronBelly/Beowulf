#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -layout us -option caps:escape

#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

#xrandr --output VGA1 --mode 1920x1080_60.00 

xset +dpms
xset -b
xset s 1860

#xset +fp ~/.local/share/.fonts
#xset fp rehash

xrdb < ~/.Xdefaults
#xsidle.sh lock &

xsetroot -cursor_name left_ptr
#hsetroot -fill ~/Pictures/walls/traffic.jpg -blur .5
#xsetroot -mod 16 16 -bg "$(xrdb -query | awk '/\*.background/ {print $2}')" -fg "$(xrdb -query | awk '/\*.color8/ {print $2}')"
#xsetroot -solid "#222"

#slstatus &
#dwm_start.sh
exec sscrotwm
