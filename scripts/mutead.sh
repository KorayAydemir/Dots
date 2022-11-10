#if playerctl metadata --format "{{mpris:trackid}}" | grep -q "/ad"
#then amixer set Master toggle
#else :
#fi
OUTPUT=$(playerctl metadata --format "{{ volume }}");
# if the metadata trackid has ad in it every second
if playerctl --player spotify metadata --format "{{mpris:trackid}}" | grep -q "/ad"
# then get the player's volume store it, set all players volume to 0
then OUTPUT=$(playerctl metadata --format "Volume: {{ volume * 100 }}"), 
playerctl --player spotify volume 0;
echo "then";
else playerctl --player spotify volume $((OUTPUT))
  echo $((OUTPUT));
  echo "else";
fi


