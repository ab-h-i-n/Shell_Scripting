
# Function to check ownership of a file
check_ownership() {
    file="$1"
    owner="$2"

    if [ -f "$file" ]; then
        if [ "$(stat -c "%U" "$file")" == "$owner" ]; then
            echo "$file is owned by $owner"
        else
            echo "$file is not owned by $owner"
        fi
    else
        echo "$file does not exist"
    fi
}

# Function to compare file modification times
compare_files() {
    file1="$1"
    file2="$2"

    if [ -f "$file1" ] && [ -f "$file2" ]; then
        if [ "$file1" -nt "$file2" ]; then
            echo "$file1 is newer than $file2"
        elif [ "$file1" -ot "$file2" ]; then
            echo "$file1 is older than $file2"
        else
            echo "$file1 and $file2 have the same modification time"
        fi
    else
        echo "One or both files do not exist"
    fi
}

# Main script

echo "Enter the first file:"
read file1
echo "Enter the second file:"
read file2

echo "Checking ownership:"
check_ownership "$file1" "$(id -gn)"
check_ownership "$file2" "$(id -gn)"

echo "Comparing file modification times:"
compare_files "$file1" "$file2"
