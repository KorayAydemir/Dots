#!/bin/bash

ls /usr/share/applications < ls /usr/local/bin | grep -wvE "/*"
#ls /usr/share/applications 
