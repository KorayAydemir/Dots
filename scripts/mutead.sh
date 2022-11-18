# NOT COMPLETE, AUTO MUTE SPOTIFY WHEN AD STARTS, CONTINUE AFTER IT ENDS
OUTPUT=$(playerctl metadata --format "{{ volume }}");
# if the metadata trackid has ad in it every second
if playerctl --player spotify metadata --format "{{mpris:trackid}}" | grep -q "/ad";
# then get the player's volume store it, set all players volume to 0 but only if volume isnt already 0
  then
    if !(OUTPUT==0.000000);
    then OUTPUT=$(playerctl metadata --format "Volume: {{ volume * 100 }}"), 
    playerctl --player spotify volume 0;
  fi
else 
  echo $OUTPUT
#else playerctl --player spotify volume $((OUTPUT))
#  echo $((OUTPUT));
fi


