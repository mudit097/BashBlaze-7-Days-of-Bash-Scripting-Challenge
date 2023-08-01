#!/bin/bash

# Part 1: File and Directory Exploration
# Display a welcome message
echo "Welcome to the Interactive File and Directory Explorer!"

while true; do
    # List all files and directories in the current path and extract name and size
    file_list=$(ls -lh)
    # Display the list with human-readable sizes
    echo -e "Files and Directories in the Current Path:\n$file_list"

    # Part 2: Character Counting
    # Prompt the user to enter a line of text
    echo -n "Enter a line of text (Press Enter without text to exit): "
    read user_input

    # Check if the user input is an empty string (i.e., Enter without text) to exit
    if [[ -z "$user_input" ]]; then
        break
    fi

    # Count the characters in the user's input and display the count
    character_count=$(echo "$user_input" | wc -m)
    echo "Character Count: $((character_count - 1))"
done

# Display goodbye message when the user exits the explorer
echo "Exiting the Interactive Explorer. Goodbye!"

