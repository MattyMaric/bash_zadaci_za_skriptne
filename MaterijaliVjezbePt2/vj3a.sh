#!/bin/bash

# U matičnom direktoriju kreirati direktorij skripte i poddirektorij repozitorij
# Kreirati datoteku biljeska.txt
# U navedenu datoteku spremiti biljeske u formatu "Korisnik: Datum: Biljeska"
# mkdir, touch, echo

date=$(date)
filepath="$HOME/skripte/repozitorij"
filename="biljeska.txt"

korisnik=$1
biljeska=$2

if [[ -z $korisnik ]]; then
    echo "Nedostaje prvi argument"
    exit 1
fi

if [[ -z $biljeska ]]; then
    echo "Nedostaje drugi argument"
    exit 1
fi

if [[ ! -d $filepath ]]; then
    echo "Direktorij ne postoji, stvara se"
    if mkdir -p $filepath; then
        echo "Direktorij je stvoren"
    else
        echo "Direktorij nije bilo moguće stvoriti"
        exit 1
    fi
fi

datoteka="$filepath/$filename"

if [[ ! -e $datoteka ]]; then
    echo "Korisnik:Datum:Naziv biljeske" > $datoteka
fi

echo "$korisnik:$date:$biljeska" >> $datoteka

cat $datoteka
