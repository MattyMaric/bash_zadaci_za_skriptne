#!/bin/bash

lista=()
suma=0

for((i=0;i<5;i++)); do
    random_broj=$(( RANDOM%100+1 ))
    lista+=($random_broj)
    suma=$((suma+random_broj))
done

prosjek=$(echo "scale=2; $suma/5" | bc)

echo "${lista[@]}"
echo $suma
echo "Prosjek: $prosjek"