#!/bin/bash

#Napisati program koji stvara direktorij ako ga nema i u njemu stvara
#novu datoteku ako je nema, te u nju upise poruku od korisnika

echo "Unesite poruku"
read poruka

nazivDirektorija="repozitorij"
NazivDatoteke="poruka.txt"

if [[ -d $nazivDirektorija ]]; then
    echo "direktorij vec postoji"
else
    mkdir $nazivDirektorija
    echo "Direktorij napravljen"
fi

if [[ -e "$nazivDirektorija/$NazivDatoteke" ]]; then
    echo "Datoteka vec postoji"
else
    touch "$nazivDirektorija/$NazivDatoteke"
    echo "Datoteka napravljena"
fi

echo "$poruka" >> "$nazivDirektorija/$NazivDatoteke"
echo "Poruka uspjesno unesena u datoteku"
