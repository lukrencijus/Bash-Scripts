#!/usr/bin/env bash

if [ $# -eq 0 ]; then
        echo "Įveskite stringą"
        read string
else
        string="$1"
fi

echo "turi" ${#string} "simbolius"