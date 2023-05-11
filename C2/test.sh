text_path="/usr"
touch "secretData.html" #TODO: fix this
if [ -d $text_path ]; then
    dir=$(ls $text_path*)
    echo $dir > "secretData.html"
elif [ -f $text_path ]; then #file
    cat $text_path > "secretData.html"
fi