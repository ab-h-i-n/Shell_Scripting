
read -p "Enter 2 numbers : " num1 num2

read -p "
Menu driven calculator
......................

1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Modulus

Enter your choice : " choice 

case $choice in
    1)
        echo "Sum is : $((num1 + num2))"
        ;;
    2)
        echo "Difference is : $((num1 - num2))"
        ;;
    3)
        echo "Product is : $((num1 * num2))"
        ;;
    4)
        if [ $num2 -eq 0 ]; then
            echo "Error: Division by zero!"
        else
            echo "Quotient is : $((num1 / num2))"
        fi
        ;;
    5)
        if [ $num2 -eq 0 ]; then
            echo "Error: Modulus by zero!"
        else
            echo "Modulus is : $((num1 % num2))"
        fi
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
