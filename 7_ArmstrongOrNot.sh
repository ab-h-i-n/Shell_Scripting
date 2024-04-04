read -p "Enter a number : " num

if [ -z $num ]; then
    echo "No number were entered!"
fi

temp=$num

sum=0

while [ $temp -ne 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** 3))
    temp=$((temp / 10))
done

if [ $num -eq $sum ]; then
    echo "$num is armstrong number!"
else
    echo "$num is not armstrong number!"
fi
