#!/bin/bash

lista=()
suma=0

for(( i=0;i<5;i++ )); do
    random_num=$((RANDOM%100+1))
    suma=$((suma+random_num))
    lista+=($random_num)
done

prosjek=$( echo "scale=2; $suma/5 " | bc)

echo "Lista: ${lista[@]}"
echo "Suma: $suma"
echo "Prosjek: $prosjek"
