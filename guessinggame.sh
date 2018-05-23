#!/usr/bin/env bash
# File: guessinggame.sh

local number_actual, number_guess

# number_actual is the correct number of files in the current dir
number_actual=$(ls | wc -l)

# I know the course and the book use quotation marks to print using echo,
# but on my mac the quotation marks would show when printed.
# It prints nicely when I do not use quotation marks.
echo ——— THE GUESSING GAME BEGINS ——-
echo Guess how many files are in the current directory?
echo Type in a number and then press Enter:
read number_guess
while [[ $number_guess -ne $number_actual ]]
do
    echo "You entered $number_guess but it's wrong. Please try again."
    [[ $number_guess -gt $number_actual ]] && echo Hint: your guess is too large. || echo Hint: your guess is too small.
    read number_guess
done
echo You entered $number_guess and that is correct! Congratulations.
echo ——— THE END ——-


