#!/bin/bash

#Zadatak: Napišite skriptu koja će kreirati novi direktorijum sa nazivom koji korisnik unese.

echo "Unesite naziv direktorija"
read direktorij

if [[ -d $direktorij ]]; then
    echo "Direktorij vec postoji"
else
    mkdir "$direktorij"
    echo "direktorij uspjesno napravljen"
fi

