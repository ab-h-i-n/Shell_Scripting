odd_sum=0
even_sum=0

echo "Enter a list of numbers and press enter :  "
read -a num

for i in ${num[@]}; do
    if [ $((i % 2)) -eq 0 ]; then
        even_sum=$((even_sum + i))
    else
        odd_sum=$((odd_sum + i))
    fi
done

echo "Odd Sum : $odd_sum"
echo "Even Sum : $even_sum"
