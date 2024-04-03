sum=0
count=0

echo "Enter a list of numbers and press enter to finish "
read -a num

for i in ${num[@]}
do
    sum=$((sum + i))
    ((count++))
done


avg=$((sum / count))

echo "Sum is $sum"
echo "Avg is $avg"