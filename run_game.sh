#!/bin/bash

echo "$USER"s program

mkdir -p "$USER"_labb

cp Guesser.java "$USER"_labb
cp GuessingGame.java "$USER"_labb

cd "$USER"_labb

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
