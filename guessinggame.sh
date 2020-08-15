#!/usr/bin/env bash
# File: guessinggame.sh

function guessnum(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
    	echo "Can You Guess How Many Files Are There In The Current Directory "
        echo "Enter Your Answer Here:"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Uhh! Your guess is Less then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Uhh! Your guess is Greater then the true number"
        else
            echo "Congratulation!!! Your Deduction Is Correct "
        break;
        fi
    done
}

guessnum