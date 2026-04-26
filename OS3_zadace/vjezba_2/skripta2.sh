#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Potrebno je proslijediti 1 argument"
  exit 1
fi

BROJ="$1"

if [ "$BROJ" -lt 1 ] || [ "$BROJ" -gt 10 ]; then
  echo "Broj mora biti između 1 i 10"
  exit 1
fi

> brojevi.txt

for (( i=1; i<=BROJ; i++ )); do
  echo "$i" >> brojevi.txt
done

echo "Datoteka brojevi.txt je napravljena"
