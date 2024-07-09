#!/bin/bash

#Zadatak: Napišite skriptu koja proverava da li datoteka ima dozvolu za čitanje, pisanje i izvršenje.


echo "Unesite ime datoteke:"
read datoteka

if [[ -r $datoteka ]]; then
    echo "datoteka $datoteka ima dozvolu za citanje"
fi

if [[ -w $datoteka ]]; then
    echo "datoteka ima dozvolu za pisanje"
fi

if [[ -x $datoteka ]]; then
    echo "Datoteka ima dozvolu za izvodenje"
fi

