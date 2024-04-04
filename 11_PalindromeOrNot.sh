read -p "Enter a number : " num

if [ -z $num ]; then
    echo "No number were entered!"
fi

numRev=$(echo $num | rev)

if [ $num = $numRev ]; then
    echo "$num is a palindrome number!"
else
    echo "$num is not a palindorme number!"
fi
