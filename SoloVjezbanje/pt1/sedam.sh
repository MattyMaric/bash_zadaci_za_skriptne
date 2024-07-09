#!/bin/bash

echo "Unesite naziv datoteke:"
read datoteka

if [ -f "$datoteka" ]; then
    broj_redova=$(wc -l<"$datoteka")
    echo "$datoteka postoji i ima $broj_redova redova"
else
    echo "Datoteka ne postoji"
fi