#!/bin/bash

lista=()
suma=0

for(( i=0;i<5;i++ )); do
    randint=$((RANDOM%100+1))
    suma=$((suma+randint))
    lista+=($randint)
done

average=$(echo "scale=2; $suma/5" | bc);

echo "${lista[@]}"
echo $suma
echo $average