#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Potrebno je proslijediti samo jedan argument"
  exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
  echo "Direktorij ne postoji"
  exit 1
fi

tar -czf "$DIR/svi_zapisi.zip" "$DIR"/*

echo "Datoteke su komprimirane u $DIR/svi_zapisi.zip"
