#!/usr/bin/env bash

PREFIX="vu"
NUMBER=$1

if [ -z "$1" ]; then
  echo "Usage: $0 <number>"
  exit 1
fi

USER="$PREFIX""$NUMBER"

sudo usermod -L "$USER"
sudo usermod -e 1 "$USER"