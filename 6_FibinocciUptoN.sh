read -p "Enter the limit : " limit

a=0
b=1


if [[ ! $limit -gt 0 ]]
then
    echo "Invalid limit!"
    exit 1
elif [ $limit -eq 1 ]
then
    echo $a
else

    echo $a
    echo $b 

    for ((i=0; i<$limit-2 ; i++))
    do
        c=$((a + b))
        echo $c
        a=$b
        b=$c
    done
fi



