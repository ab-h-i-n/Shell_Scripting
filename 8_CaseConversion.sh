#!/bin/bash

read -p "Enter the text : " text

if [ -z "$text" ]; then
    echo "No text was entered!"
    exit 1
fi

read -p "
1. Convert to Uppercase
2. Convert to Lowercase

Enter your choice: " choice

case $choice in

    1)
        echo "In Uppercase: ${text^^}"
        ;;
    2)
        echo "In Lowercase: ${text,,}"
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
