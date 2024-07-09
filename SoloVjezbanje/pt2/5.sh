#!/bin/bash

while true; do

    echo "Unesite broj"
    read Broj



    if (( Broj % 2 == 0 )); then
        echo "Broj je paran"
    else
        echo "Broj je neparan"
    fi

done
