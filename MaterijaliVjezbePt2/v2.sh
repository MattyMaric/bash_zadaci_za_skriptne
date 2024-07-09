#!/bin/bash

date=$(date)

argument="$1"

filename=${HOME}/skripte4/${argument}notes.txt

read -p "vasa biljeska: " note

echo "$date: $note" >> "$filename"
echo "spremljeno"