#!/bin/bash
#ls /usr/share/applications | grep -wvE "/*"
ls /usr/share/applications && ls /usr/local/bin | cat | grep -wvE "/*"
#ls /usr/share/applications < ls /usr/local/bin | grep -wvE "/*" ---- this was working wtf happened
