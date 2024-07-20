#!/bin/bash
# This script demonstrates user input, conditionals, loops, and functions in Bash

# Function to print a greeting
print_greeting() {
    echo "Hello, $1! Welcome to the advanced Bash script tutorial."
}

# Function to calculate the factorial of a number
factorial() {
    local n=$1
    local result=1
    for (( i=1; i<=n; i++ ))
    do
        result=$((result * i))
        echo "$result is the result"
    done
    echo "The factorial of $n is $result."
    
}

# Function to check if a number is prime
is_prime() {
    local num=$1
    if (( num <= 1 )); then
        echo "$num is not a prime number."
        return
    fi
    for (( i=2; i*i<=num; i++ ))
    do
        echo "---$num is your num"
        echo "---- $((num % i)) is you modulo"
        if (( num % i == 0 )); then
            echo "$num is not a prime number."
            return
        fi
    done
    echo "$num is a prime number."
}

# Get user's name
read -p "Enter your name: " name
print_greeting "$name"

# Ask user for a number
read -p "Enter a number to calculate its factorial: " number
factorial "$number"

# Check if the number is prime
is_prime "$number"

echo "new branch"