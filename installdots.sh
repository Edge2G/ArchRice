#!/bin/bash

# Copies files to correct directory

cp .bashrc /home/$USER -i
cp .vimrc  /home/$USER -i
cp .Xresources /home/$USER -i
cp .xinitrc /home/$USER -i

cp i3/config /home/$USER/.config/i3 -i
cp i3/.i3blocks.conf /home/$USER -i

mkdir /home/$USER/.config/blockScripts
cp i3/bat.sh /home/$USER/.config/blockScripts -i
cp i3/mem.sh /home/$USER/.config/blockScripts -i
cp i3/cpu.sh /home/$USER/.config/blockScripts -i