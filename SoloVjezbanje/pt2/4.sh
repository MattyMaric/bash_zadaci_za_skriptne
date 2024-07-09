#!/bin/bash

echo "napisite ime direktorija:"
read direktorij

echo "Napisite ime datoteke"
read datoteka

echo "Unesite Poruku"
read poruka

if [[ ! -d $direktorij ]]; then
    mkdir $direktorij
    echo "Direktorij je napravljen"
else
    echo "direktorij vec postoji"
fi

if [[ ! -f $datoteka ]]; then
    touch "$direktorij/$datoteka"
    echo "datoteka kreirana"
else
    echo "datoteka vec postoji"
fi

echo "$poruka" >> "$direktorij/$datoteka"
echo "Poruka spremljena"