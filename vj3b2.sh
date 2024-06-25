#!/bin/bash

dir_path="$HOME/skripte/repozitorij"

if [[ ! $1 ]]; then
    echo "Argument nije poslan"
    exit 1
fi

filename=$1

if [[ ! -d $dir_path ]]; then
    if mkdir $dir_path
    then
        echo "Direktorij $dir_path je napravljen"
    else:
        echo "Direktorij $dir_path nije napravljen"
        exit 1
    fi
fi

$datoteka=$dir_path/$filename

if [[ ! -e $datoteka ]]; then
    if echo "#!/bin/bash" >> $datoteka
fi

chmod u+x $datoteka

cat $datoteka