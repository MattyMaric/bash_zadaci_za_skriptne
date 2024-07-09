#!/bin/bash

# Define the directory and file path
direktorij="${HOME}/Desktop/Bash_vjezbe/SoloVjezbanje/pt2/noviFolder"
datoteka="${direktorij}/notes.txt"

# Prompt the user for a note
echo "Upisite biljesku:"
read biljeska

# Check if the directory exists, if not create it
if [[ ! -d $direktorij ]]; then
    mkdir -p "$direktorij"
    echo "Direktorij je napravljen."
else
    echo "Direktorij već postoji."
fi

# Append the note to the file
echo "$biljeska" >> "$datoteka"

# Confirm the note was added
echo "Bilješka je upisana: $biljeska"
