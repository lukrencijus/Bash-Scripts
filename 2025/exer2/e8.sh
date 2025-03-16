#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite failo pavadimą, kurio teises norite pakeisti"
        read file
else
        file="$1"
fi

if [ -e "$file" ]; then
        chmod 400 "$file"
        echo "Failas buvo padarytas read only owneriui"
else
        echo "Failas neegzistuoja"
fi