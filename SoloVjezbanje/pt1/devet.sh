#!/bin/bash

echo "Unesite naziv datoteke"
read datoteka

if [ -f $datoteka ]; then
    head -n 10 "$datoteka"
else
    echo "datoteka ne postoji"
fi