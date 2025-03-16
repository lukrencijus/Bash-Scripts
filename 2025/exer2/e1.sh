#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Failas nepateiktas"
        echo "Įrašykite failo pavadinimą"
        read pavadinimas
else
        pavadinimas="$1"
fi

if ! [ -e "$pavadinimas" ]; then
        echo "Failas neegzistuoja"
        touch "$pavadinimas"
        echo "Failas buvo sukurtas"
        exit 1
fi

cat "$pavadinimas"