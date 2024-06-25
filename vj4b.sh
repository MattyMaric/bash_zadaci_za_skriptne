#!/bin/bash

for variable in {2,3,6,4,7,3}
do
    echo $variable
    sleep 1
done

echo "Datoteke ljuske:"
for file in *.sh
do
    echo $file
done

env>dat2.txt

lista=$(cat dat.txt)

for var in $lista; do
    echo "Varijable okruzenja $var"
    sleep 1
done

for (( i=1;i<=20;++i)); do
    if (( i%2==0)); then
        echo "Broj iznosi $i"
    fi
done