dir="hi"
echo "hi" | openssl enc -aes-256-cbc -pass pass:YOURPASSWORD -p -out enc.txt -base64

#echo $secret