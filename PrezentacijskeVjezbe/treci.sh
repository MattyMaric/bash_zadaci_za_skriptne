#!/bin/bash

date=$(date)
topic="$1"
filename="${HOME}/skripte3/${topic}notes.txt"

read -p "Vasa biljeska: " note

echo "$date: $note" >> "$filename"
echo "Biljeska '$note' spasena u $filename"