read -p "Enter string 1 : " string1
read -p "Enter string 2 : " string2

if [ -z $string1 ]; then
    echo "String1 length is 0!"
else
    echo "String1 length is not 0!"
fi

if [ -z $string2 ]; then
    echo "String2 length is 0!"
else
    echo "String2 length is not 0!"
fi

if [ $string1 = $string2 ]; then
    echo "Two strings are equal!"
else
    echo "Two strings are not equal!"
fi

concatnatedString=$string1$string2

echo "Concatenated String : $concatnatedString"
