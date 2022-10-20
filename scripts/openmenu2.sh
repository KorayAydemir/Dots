#!/bin/sh

mycache=~/scripts/executables.cache

choice=`cat $mycache | \
  dmenu -i -f \
  -fn 1 \
  -nf white -nb '#24273a' -sf '#181926' -sb '#f4dbd6'\
  -p 'What the fuck do you want?'`

[ "$?" = "0" ] && gtk-launch $choice

~/scripts/list_executables_on_desktop.sh > $mycache

