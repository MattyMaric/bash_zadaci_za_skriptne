#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Potrebna 2 argumenta"
    exit 1
fi

ime=$1
lozinka=$2

lenght_1=${#ime}
lenght_2=${#lozinka}

limit=6

if [[ $lenght_2 -lt $limit ]]; then
    echo "lozinka mora imati najmanje 6 znakova"
    exit 1
else
    echo "Validacija imena $ime i  lozinke: $lozinka uspjesni!"
    exit 0
fi