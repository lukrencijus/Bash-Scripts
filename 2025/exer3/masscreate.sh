#!/usr/bin/env bash

prefix=""
count=0
pass=""

if [[ "$#" -ne 6 ]]; then
        echo "There should be 6 parameters in total"
        echo "Usage: $0 --prefix <PREFIX> --count <COUNT> --pass <PASSWORD>"
        exit 1
fi


while [[ "$#" -gt 0 ]]; do
        case $1 in
                --prefix) prefix="$2"; shift 2;;
                --count) count="$2"; shift 2;;
                --pass) pass="$2"; shift 2;;
                *) echo "Unknown parameter: $1"; exit 1;;
        esac
done

for i in $(seq -w 000 "$count")
do
        sudo adduser --disabled-password --gecos "" "$prefix""$i"
        sudo chpasswd <<< "$prefix""$i":"$pass"
done