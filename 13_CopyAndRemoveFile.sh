
# Function to display the menu
display_menu() {
    echo "Menu:"
    echo "1. Copy a file"
    echo "2. Remove a file"
    echo "3. Exit"
}

# Function to copy a file
copy_file() {
    read -p "Enter the source file: " source_file
    read -p "Enter the destination file: " destination_file

    if [ -f "$source_file" ]; then
        cp "$source_file" "$destination_file"
        echo "File copied successfully!"
    else
        echo "Source file does not exist."
    fi
}

# Function to remove a file
remove_file() {
    read -p "Enter the file to remove: " file_to_remove

    if [ -f "$file_to_remove" ]; then
        rm "$file_to_remove"
        echo "File removed successfully!"
    else
        echo "File does not exist."
    fi
}

# Main script
while true; do
    display_menu
    read -p "Enter your choice: " choice

    case $choice in
        1)
            copy_file
            ;;
        2)
            remove_file
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid choice. Please enter a valid option."
            ;;
    esac
done
