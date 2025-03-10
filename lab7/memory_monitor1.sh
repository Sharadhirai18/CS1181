#!/bin/bash
# Shell Script for Monitoring Memory Usage
# Usage: ./memory_monitor.sh

# Function to display memory usage
display_memory_usage() {
    echo "Waiting for 10 seconds before displaying memory usage..."
    sleep 10  # Add a 10-second delay
    echo "Current Memory Usage:"
    free -h
    echo ""  # Print a newline for better readability
}

# Function to display memory usage in real-time
monitor_memory_usage() {
     echo "Waiting for 10 seconds before displaying memory usage..."
    sleep 10 
    # Use top command to show memory usage updates every 2 seconds
    top -o %MEM
}

# Displaying options to the user
echo "Dynamic Memory Monitor"
echo "1. Display current memory usage"
echo "2. Monitor memory usage in real-time"
echo "3. Exit"

# Loop until the user chooses to exit
while true; do
    read -p "Select an option (1-3): " option
    case $option in
        1) # Display current memory usage with a 10-second delay
            display_memory_usage
            ;;
        2) # Monitor memory usage with a 10-second delay
            monitor_memory_usage
            ;;
        3) # Exit the script usage with a 10-second delay
          echo "Waiting for 10 seconds before displaying memory usage..."
    sleep 10 
            echo "Exiting the memory monitor. Goodbye!"
            exit 0
            ;;
        *) # Invalid option
            echo "Invalid option. Please select 1-3."
            ;;
    esac
    echo "" # Print a newline for better readability
done

