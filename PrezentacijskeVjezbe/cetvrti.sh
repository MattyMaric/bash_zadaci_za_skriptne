#!/bin/bash

if mkdir "repozitorij"; then
    echo "Direktorij repozitorij kreiran"
else
    echo "Repozitorij se nije kreirao. Greska!"
    exit 2
fi

if [[ "$#" -ne 1 ]]; then
    echo "Netocan broj argumenata"
    exit 1
fi
