#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Direktorija nepateikta"
        echo "Įrašykite direktorijos pavadinimą"
        read directory
else
        directory="$1"
fi

#if ! [ -d "$directory" ]; then
#        echo "Direktorija neegzistuoja"
#        exit 1
#fi

eval ls "$directory"