#!/bin/bash

echo Peter_Hjelms program

mkdir -p Peter_Hjelm_labb

cp Guesser.java Peter_Hjelm_labb
cp GuessingGame.java Peter_Hjelm_labb

cd Peter_Hjelm_labb

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
