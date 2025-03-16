#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite failo pavadinimą, kurio kopiją norėtumėte sukurti"
        read file
else
        file="$1"
fi

if [ -e $file ]; then
        filename="${file%.*}"
        extension="${file##*.}"
        backup="$filename$(date +'%Y-%m-%d').$extension"
        cp "$file" "$backup"
        echo "Failo atsarginė kopija buvo sukurta: " $backup
else
        echo "Failas neegzistuoja"
fi
