#!/bin/bash

#Zadatak: Napišite skriptu koja će proveriti da li datoteka postoji i da li je regularna datoteka.

echo "unesite Naziv datoteke"

read datoteka

if [ -e "$datoteka" ]; then
    if [ -f "$datoteka" ]; then
        echo "Datoteka $datoteka postoji i regularna je datoteka"
    else
        echo "Datoteka $datoteka postoji ali nije regularna datoteka"
    fi
else
    echo "Datoteka $datoteka ne postoji"
fi