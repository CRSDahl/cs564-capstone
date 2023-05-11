#!/bin/bash
#use cron

crontab -l > crontab_new 

path=$(pwd)
#echo "40 01 * * * $path/get_data.sh" >> crontab_new
#for testing, have it run every 5 minutes
echo "*/5 * * * * $path/get_data.sh $1" >> crontab_new

crontab crontab_new
rm crontab_new