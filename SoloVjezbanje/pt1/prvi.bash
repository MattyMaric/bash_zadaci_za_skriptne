#!/bin/bash

#Zadatak: Napišite skriptu koja će proveriti da li je broj koji korisnik unese paran ili neparan.

echo "unesite broj"
read broj

if (( broj % 2 == 0 )); then
    echo "Broj je paran"
else 
    echo "Broj je neparan"
fi

