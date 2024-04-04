read -p "Enter the base number : " base
read -p "Enter the power : " power

result=1

for ((i = 1; i <= $power; i++)); do
    result=$((result * base))
done

echo "$base raised to the power of $power is : $result"



# another way

# read -p "Enter the base number : " base
# read -p "Enter the power : " power

# result=$((base ** power))

# echo "$base raised to the power of $power is : $result"
