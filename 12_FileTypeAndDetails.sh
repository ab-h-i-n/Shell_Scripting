getDetails=""

read -p "Enter the filename: " filename

# Check if the file/directory exists
if [ ! -e "$filename" ]; then
    echo "File does not exist!"
    exit 1
fi

# Check if it is a file or directory
if [ -f "$filename" ]; then
    echo "It is an ordinary file!"
    getDetails=$(ls -l "$filename")

    # Check if the file is empty
    if [ ! -s "$filename" ]; then
        echo "File is empty."
    else
        echo "File is not empty"
    fi

elif [ -d "$filename" ]; then
    echo "It is a directory!"
    getDetails=$(ls -ld "$filename")

    #check folder is empty or not
    number_of_items=$(ls -A "$filename" | wc -l)
    if [ $number_of_items -gt 0 ]; then
        echo "Directory is not empty!"
    else
        echo "Directory is empty!"
    fi
fi

# Check file permissions
permissions="$getDetails"
readable=$(echo "$permissions" | cut -c 2)
writable=$(echo "$permissions" | cut -c 3)
executable=$(echo "$permissions" | cut -c 4)

if [ "$readable" = "r" ]; then
    readable="yes"
else
    readable="no"
fi

if [ "$writable" = "w" ]; then
    writable="yes"
else
    writable="no"
fi

if [ "$executable" = "x" ]; then
    executable="yes"
else
    executable="no"
fi

echo "Readable: $readable"
echo "Writable: $writable"
echo "Executable: $executable"
