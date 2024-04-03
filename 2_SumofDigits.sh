read -p "Enter a number : " num

if [ -z "$num" ]; then
    echo "No number entered"
else
    sum=0
    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
    done

    while [ $sum -gt 9 ]; do
        temp=$sum
        sum=0

        while [ $temp -gt 0 ]; do
            digit=$((temp % 10))
            sum=$((sum + digit))
            temp=$((temp / 10))
        done
    done

    echo "Sum of digits : $sum"
fi
