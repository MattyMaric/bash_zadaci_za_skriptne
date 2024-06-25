#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Nuzan je jedan argument"
    echo "Poziv $0 'Naziv datoteke'"
    exit 1
fi

dir_path="$HOME/skripte/repozitorij"
filename=$1
filepath=$dir_path/$filename

echo "!#bin/bash" > $filepath

if [[ -r $filepath ]]; then
    echo "moze se citati"
else
    echo "Ne moze se citati:"
fi

if [[ -w $filepath ]]; then
    echo "Moze se pisati"
else
    echo "Ne moze se pisati"
fi

if [[ -x $filepath ]]; then
    echo "Moze se izvrsavati"
else
    echo "Ne moze se izvrsavati"
fi

chmod u=rwx,g-rwx,o-rwx $filepath
ls -l $filepath
cat $filepath