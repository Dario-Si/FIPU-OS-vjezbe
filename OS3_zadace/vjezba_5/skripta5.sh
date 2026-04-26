#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Potrebno je proslijediti točno jedan argument"
  exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
  echo "Direktorij ne postoji"
  exit 1
fi

if [ ! -d "$DIR/.git" ]; then
  echo "Direktorij nije Git repozitorij"
  exit 1
fi

cd "$DIR" || exit 1

echo "Informacije o repozitoriju" > repozitorij_info.txt
echo "Putanja: $DIR" >> repozitorij_info.txt
echo "Datum: $(date)" >> repozitorij_info.txt
echo "Grana: $(git branch --show-current)" >> repozitorij_info.txt

git add repozitorij_info.txt
git commit -m "Dodan repozitorij_info.txt"

git log --oneline
