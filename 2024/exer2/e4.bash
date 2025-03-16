#!/usr/bin/bash

echo "Pradzia"

echo "Programos pavadinimas yra $0"
echo "Iveskite skaiciu"
read number

if(($number % 2 == 0))
then
even=("Lyginis")
else
even=("Nelyginis")
fi

echo "Skaicius yra: $even"
echo "Pabaiga"

