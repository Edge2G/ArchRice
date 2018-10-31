font pango: DejaVu Sans Mono 8
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
~/.fehbg &
bash -c 'sleep 10 && xset r rate 200 30'
exec i3
