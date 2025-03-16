#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite skaičių, kurio daugybos lentelės norite"
        read num
else
        num="$1"
fi

if [ $# -eq 0 ]; then
        echo "Įveskite iki kurio skaičiau norite daugybos lentelės"
        read max
else
        max="$2"
fi

i=0
while [ $i -le $max ]; do
        value=$((i*num))
        echo "$num * $i = $value"
        ((i++))
done