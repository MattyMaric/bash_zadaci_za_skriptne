#!/bin/bash

dir_path="$HOME/skripte/repozitorij"
filename="biljeska.txt"

if [[ ! $1 ]];
then
    echo "Argument nije poslan"
    echo "Poziv: $0 biljeska"
    exit 1
fi 

biljeska=$1

if [[ ! -d $dir_path ]]; then

    if mkdir -p $dir_path;
    then
        echo "Direktorij $dir_path kreiran!"
    else
        echo "Direktorij $dir_path nije kreiran!"
        exit 1
    fi
fi

datoteka=$dir_path/$filename

if [[ -e $datoteka ]]; then
    echo "$USER:$(date):$biljeska" >> $datoteka
else
    echo "Korisnik:Datum:Naziv biljeske" >> $datoteka
    echo "$USER:$(date):$biljeska" >> $datoteka
fi

cat $datoteka