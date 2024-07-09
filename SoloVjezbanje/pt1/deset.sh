#!/bin/bash

brojevi=()

for ((i=0;i<5;i++)); do
    random_number=$((RANDOM%100+1))
    brojevi+=($random_number)
done

echo "Nasumicni brojevi: ${brojevi[@]}"

sum=0
for broj in "${brojevi[@]}"; do
    sum=$((sum + broj))
done

prosjek=$(echo " $sum / ${#brojevi[@]}" | bc)

echo "prosjek je: $prosjek"