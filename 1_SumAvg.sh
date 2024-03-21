sum=0
count=0

echo "Enter a list of numbers and press enter to finish "

while read num; do
    if [ -z $num ]; then
        break
    fi
    sum=$((sum + num))
    count=$((count + 1))
done

if [ $count -eq 0 ]; then
    echo "No numbers entered"
else
    avg=$((sum / count))
    echo "Sum : $sum"
    echo "Average : $avg"
fi
