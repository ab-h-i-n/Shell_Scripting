odd_sum=0
even_sum=0

echo "Enter a list of numbers and press enter to finish "

while read num; do
    if [ -z $num ]; then
        break
    fi
    if [ $((num % 2)) -eq 0 ]; then
        even_sum=$((even_sum + num))
    else
        odd_sum=$((odd_sum + num))
    fi
done

echo "Sum of odd numbers : $odd_sum"
echo "Sum of even numbers : $even_sum"
