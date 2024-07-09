#!/bin/bash

date=$(date)

argumenti=$*
echo $argumenti

echo "$argumenti $date" >> dokument.txt
echo "Spremljeno u dokument $*"