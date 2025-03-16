#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite skaičių"
        read num
else
        num="$1"
fi

if [ $((num % 2)) -eq 0 ]; then
        echo "$num yra lyginis skaičius"
else
        echo "$num yra nelyginis skaičius"
fi