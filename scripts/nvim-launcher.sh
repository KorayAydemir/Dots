#!/bin/bash
kitty -o allow_remote_control=yes --listen-on unix:/tmp/mykitty & (
sleep .1 &&
kitty @ --to unix:/tmp/mykitty set-spacing padding=0
kitty @ --to unix:/tmp/mykitty send-text 'nvim \x0d' 
  ) 
# add Exec=home/%YOUR_USER%/scripts/nvim-launcher.sh to usr/share/applications/nvim.desktop
