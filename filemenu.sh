#!/bin/bash
# Connor Warming
# N01491851

while true; do
    echo -e "Please make a selection."
    echo -e "1) Display a list of files & directories in the current directory."
    echo -e "2) Display a long list of files & directories in the current directory."
    echo -e "3) Display the contents of this script."
    echo -e "4) Exit the program."

    read -p "Enter your choice (1-4): " choice

    case $choice in
        1)
            echo "List of files and directories:"
            ls
            ;;
        2)
            echo "Long list of files and directories:"
            ls -l
            ;;
        3)
            echo "Contents of this script:"
            cat "$0"
            ;;
        4)
            echo "Exiting the program. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done