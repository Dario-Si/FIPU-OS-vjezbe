#!/bin/bash

DIR="screenshots"
brojac=1

for file in "$DIR"/*; do
  if [ -f "$file" ]; then
    ime=$(basename "$file")
    novo="screenshot_${brojac}_${ime}"
    mv "$file" "$DIR/$novo"
    brojac=$((brojac + 1))
  fi
done

echo "Preimenovane datoteke:"
ls "$DIR"
