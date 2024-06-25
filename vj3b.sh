#!/bin/bash

target=$(( $RANDOM%100))

guess="-1"

while [[ $guess -ne $target ]]; do
    read -p "Pogodi broj od 0 do 100:" guess
    if [[ $guess -lt $target ]]; then
        echo "trazeni broj je veci"
    elif [[ $guess -gt $target ]]; then
        echo "Trazeni broj je manji!"
    else
        echo "Cestitam, pogodili ste broj"
    fi
done