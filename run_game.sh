#!/bin/bash

echo "$USER"s program

full_name=$(getent passwd "$USER" | cut -d ':' -f 5 | cut -d ',' -f 1)

if [ -z "$full_name" ]; then
    echo "Could not retrieve full name from system. Please enter your first and last name."
    read -p "First Name: " first_name
    read -p "Last Name: " last_name
else
    first_name=$(echo "$full_name" | awk '{print $1}')
    last_name=$(echo "$full_name" | awk '{print $2}')
fi

if [ -z "$first_name" ] || [ -z "$last_name" ]; then
    echo "It seems the full name could not be extracted automatically."
    read -p "Please enter your first name: " first_name
    read -p "Please enter your last name: " last_name
fi

dir_name="${first_name}_${last_name}"

mkdir -p "$dir_name"_labb

echo "Created directory: $dir_name"

cp Guesser.java "$dir_name"_labb
cp GuessingGame.java "$dir_name"_labb

cd "$dir_name"_labb

echo "Current directory: $(pwd)"

echo "Compiling..."

java_file="GuessingGame"

javac "$java_file.java"

echo "Running the game..."

java "$java_file"

echo "The game is done!"

echo "Removing all the class files..."

rm -r *.class

ls 
