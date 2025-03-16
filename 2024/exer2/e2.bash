#!/usr/bin/bash

echo "Pradzia"

if [ $# -eq 0 ]
then
    echo "Programos vykdymui butina nurodyti bent viena papildoma parametra"
    exit 0
fi

echo "Programos pavadinimas yra $0"
echo "Pirmas parametras yra: $1"

if [ -d "$1" ]
then
    echo "Katalogas egzistuoja!"
    ls -al $1
else
    echo "Katalogas neegzistuoja"
fi

echo "Pabaiga"
