#!/bin/bash
#Follows ./ourside.bash <clean_image_name> <commmand>
image=$1
code=$2
if [ -z $image ]; then
    image="clean_image.png"
fi
if [ -z $code ]; then
    code="0000"
fi

cat $image > secretImage.png
echo $code >> secretImage.png
