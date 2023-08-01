#!/bin/bash
echo "Hey choose an operation"
echo 
echo "Part1 = File and Directory Exploration"
echo "Part2 = Character Counting"
read choice

case $choice in
             Part1)
                # Welcome message
                echo "Welcome to the File and Directory Explorer!"

                # to explore files and directories
                while true; do
                
               # List all files and directories in the current path with human-readable sizes
                echo "Files and Directories in the Current Path:"
                ls -lh

		# Prompt the user for options
		  echo "Enter 'q' to quit or press Enter to refresh the list."
		  read -r option

	        # Check if the user wants to quit
		    if [ "$option" = "q" ]; then
			echo "Exiting the File and Directory Explorer."
			break
		    fi
		done
                ;;
             Part2)
                # Prompt the user for input and count characters until an empty string is entered
		echo "Enter lines of text (press Enter without any text to exit):"
		while read -r line; do
		    # Check if the input line is empty
		    if [ -z "$line" ]; then
			echo "Exiting the Interactive Explorer. Goodbye!..."
			break
		    else
			# Count the number of characters in the input line
			char_count=$(echo -n "$line" | wc -c)
			echo "Character count: $char_count"
		    fi
		done
                ;;
            *)
                echo "Not a valid argument"
                echo
                ;;
esac   
