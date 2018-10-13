#!/usr/bin/env bash
# File:guessinggame.sh

value=$(ls -l | grep "^\W" | wc -l)
guesses=1
function init {
echo "Write the number of file that you think might be contained in the current directory."
}

init
while read response; do
if [[ $response -eq $value ]]

        then echo 'Your number is correct.'
	     break;
        else
        if [[ $response -lt $value ]]
        then echo 'Your number  is too low. Write again your number'
        elif [[ $response -gt $value ]]
	then echo 'Your number is too high. Write again your number'
fi
fi
let guesses=$guesses+1
done


echo "Good job! It took you" $guesses "chances to get the right number." 
exit 0
