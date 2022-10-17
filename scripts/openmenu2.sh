#!/bin/sh

mycache=~/scripts/executables.cache

choice=`cat $mycache | \
  dmenu -i -f \
  -fn 1 \
  -nf white -nb black -sf hotpink -sb '#301252'\
  -p 'What the fuck do you want?'`

[ "$?" = "0" ] && gtk-launch $choice

~/scripts/list_executables_on_desktop.sh > $mycache

