#
# ~/.bashrc
#
#source .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='[\[$(tput setaf 46)\]\u\[$(tput setaf 196)\]@\[$(tput setaf 21)\]\h\[$(tput sgr 0)\] \W]\$ '
alias confi3='vim /home/cris/.config/i3/config'
alias confxr='vim /home/cris/.Xresources'
alias confi3b='vim /home/cris/.i3blocks.conf'
alias resetx='xrdb .Xresources'
alias confbrc='vim /home/cris/.bashrc'
alias cls='clear && ls'
alias cdblocks='cd /home/cris/.config/blockScripts'
