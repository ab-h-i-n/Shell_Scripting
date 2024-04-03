read -p "Enter the filename : " filename

if [ ! -f $filename ]
then
    echo "File does not exists!"
    exit 0
fi


read -p "Enter the word to search : " word

if grep -q $word $filename
then
    echo "The file contains the word ($word)"
else
    echo "The file doesn't contain the word ($word)"
fi