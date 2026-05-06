#!/bin/bash

while true
do
    echo "------ Simple Calculator ------"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exit"

    read -p "Enter choice: " choice

    if [ "$choice" -eq 5 ]; then
        echo "Exiting..."
        break
    fi

    read -p "Enter first number: " a
    read -p "Enter second number: " b

    case $choice in
        1)
            result=$((a + b))
            echo "Result: $a + $b = $result"
            ;;
        2)
            result=$((a - b))
            echo "Result: $a - $b = $result"
            ;;
        3)
            result=$((a * b))
            echo "Result: $a * $b = $result"
            ;;
        4)
            if [ "$b" -eq 0 ]; then
                echo "Error: Division by zero"
            else
                result=$((a / b))
                echo "Result: $a / $b = $result"
            fi
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
