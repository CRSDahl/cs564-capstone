#!/bin/bash
#use cron

crontab -l > crontab_new 

path=$(pwd)
#echo "20 01 * * * * $path/change_image.sh $1" >> crontab_new
#echo "40 01 * * * $path/get_data.sh" >> crontab_new
#echo "00 02 * * * * $path/remove_image.sh $1" >> crontab_new
#for testing, have it run every 5 minutes
echo "*/5 * * * * $path/get_data.sh $1" >> crontab_new

crontab crontab_new
rm crontab_new