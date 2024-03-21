odd_sum=0
even_sum=0

read -p "Enter a numbers and press enter to finish " num

if [ -z $num ]
then
    echo "No numbers entered"
    exit 1
fi

while [ $num -ne 0 ]
do
    digit=$((num % 10))
    if [ $((digit % 2)) -eq 0 ]
    then
        even_sum=$((even_sum + digit))
    else
        odd_sum=$((odd_sum + digit))
    fi
    num=$((num / 10))
done

echo "Sum of odd digits : $odd_sum"
echo "Sum of even digits : $even_sum"