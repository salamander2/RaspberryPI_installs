#!/bin/bash

sed -i -E 's/HISTSIZE=.000/HISTSIZE=9000/' ~/.bashrc
sed -i -E 's/HISTFILESIZE=.000/HISTFILESIZE=9000/' ~/.bashrc
sed -i -E 's/#force_color_prompt=yes/force_color_prompt=yes/' ~/.bashrc

#PS1='${debian_chroot:+($debian_chroot)}\[\033[00;39;40m\]\l\[\033[00;31;40m\] AWS \[\033[00;33m\] \A:\[\033[00;32m\]$PWD>\[\033[00m\]'
#PS1='${debian_chroot:+($debian_chroot)}\l\[\033[00;32m\]\u@\h|\[\033[00;33m\]\A:\[\033[01;34m\]$PWD>\[\033[00m\]'

sed -i -E '/PS1=.*033\[00m.*/c\PS1='"'"'\${debian_chroot:+(\$debian_chroot)}\\[\\033[00;32m\\]\\u@\\h|\\[\\033[00;33m\\]\\A:\\[\\033[01;34m\\]\$PWD>\\[\\033[00m\\]'"'" ~/.bashrc

# some more ls aliases
sed -i '/alias ll=/c\alias ll='"'"'ls -l'"'" ~/.bashrc

#Fix these too
#alias la='ls -A'
#alias l='ls -CF'

echo "" >> ~/.bashrc
echo "export EDITOR='vim'" >> ~/.bashrc

echo w >> ~/.profile