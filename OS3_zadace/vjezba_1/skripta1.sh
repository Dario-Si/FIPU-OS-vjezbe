#!/bin/bash


if [ $# -ne 2 ]; then
  echo "Potrebno je proslijediti točno 2 argumenta"
  exit 1
fi

DIR="$1"
EXT="$2"
found=0

if [ ! -d "$DIR" ]; then
  echo "Direktorij ne postoji"
  exit 1
fi


for file in "$DIR"/*; do
  if [ -f "$file" ] && [[ "$file" == *"$EXT" ]]; then
    basename "$file"
    found=1
  fi
done

if [ $found -eq 0 ]; then
  echo "Nema datoteka s nastavkom $EXT"
fi
