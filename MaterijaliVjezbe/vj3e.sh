#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Nuzna su dva argumenta"
    echo "Poziv: $0 'broj1' 'broj2'"
    exit 1
fi

a=$1
b=$2

if [[ $a -eq $b ]]; then
    echo "a i b su jednaki"
elif [[ $a -gt $b ]]; then
    echo "a je veci od b"
else
    echo "a je manji od b"
fi

