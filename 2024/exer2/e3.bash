#!/usr/bin/bash

echo "Pradzia"

echo "Programos pavadinimas yra $0"
echo "Iveskite simboliu eilute"
read string

#number = ${#string}
number=$(echo -n $string | wc -c)

echo "Simboliu kiekis: $number"
echo "Pabaiga"


