#!/bin/bash

echo "Unesite ime direktorija"
read direktorij

if [ -d $direktorij ]; then
    echo "$direktorij vec postoji"
else
    mkdir "$direktorij"
    echo "$direktorij je napravljen"
fi
