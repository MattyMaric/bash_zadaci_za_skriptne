#!/bin/bash

date=$(date)

argumenti=$*

echo $(date): $argumenti >> ./notes.txt
echo Biljeska spasena: $argumenti