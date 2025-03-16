#!/usr/bin/bash

echo "Pradzia"

echo "Programos pavadinimas yra $0"
echo "Iveskite skaiciaus, kurio daugybos lentele noretumete pamatyti"
read start
echo "Iveskite skaiciu, iki kurio noretumete matyti lentele"
read end

for ((i=0; i<=end; i++))
do
    table=$(($start * $i))
    echo "$start x $i = $table"
done

echo "Pabaiga"

