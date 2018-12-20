#!/bin/bash

function total_files_in_current_dir {
	echo $(eval ls -l | grep ^-.*$ | wc -l)
}

answer=-1
total=$(total_files_in_current_dir)

echo "How many files in current directory?"

while [[ "$answer" -ne  "$total" ]]
do
	printf "Answer: "

	read input
	
	# Chech if input is number
	if [[ "$input" =~ ^[0-9]+$ ]]
	then
		if [[ $input -gt $total ]]
		then
			echo "No, it's less"
		fi

		if [[ $input -lt $total ]]
		then
			echo "No, it's more"
		fi

		let answer=$input
	else
		echo "Wrong number. Try again"
	fi
done

echo "That's right. Congratulations!"

