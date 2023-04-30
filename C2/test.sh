current=$(date +%s)
target=$(date -j '1:00' +%s)
sleep_seconds=$(( $target_epoch - $current_epoch ))
sleep $sleep_seconds

#echo $sleep_seconds