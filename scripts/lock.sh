#!/bin/bash
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -modulate 90 -blur 0x6 /tmp/screenshot.png
i3lock -i /tmp/screenshot.png
rm /tmp/screenshot.png
