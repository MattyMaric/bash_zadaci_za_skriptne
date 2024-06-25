#!/bin/bash

declare -ir target=$(( ($RANDOM%100)+1 ))

declare -i guess=0

while(( $guess!=$target )); do
    read -p "Pogodi broj od 1 do 100:" guess
    if (( guess==0 ));then 
        continue
    fi 

    if (( $guess < $target )); then
        echo "Trazeni broj je veci"
    elif (($guess > $target )); then
        echo "Trazeni broj je manji"
    else
        echo "Cestitam pogodili ste broj"
fi
done