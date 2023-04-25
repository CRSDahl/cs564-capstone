#!/bin/bash

    #Use to add secret code to an image
    #add to cron: 00 01 * * * set_code.sh

#Follows ./ourside.bash <clean_image_name> <commmand>
image=$1
code=$2
if [ -z $image ]; then
    image="clean_image.png"
fi
if [ -z $code ]; then
    code="1111"
fi

cat $image > secretImage.png
echo $code >> secretImage.png
