#!/bin/bash

DIR="$1"
PADDING=3

cd "$DIR" || { echo "Cannot enter the directory: $DIR"; exit 1; }

for FILE in *.mp3; do
  if [[ "$FILE" =~ ^(.*)\ \(([0-9]+)\)\.mp3$ ]]; then
    NAME="${BASH_REMATCH[1]}"
    NUM="${BASH_REMATCH[2]}"

    PADDED_NUM=$(printf "%0${PADDING}d" "$NUM")
    NEW_NAME="${PADDED_NUM} ${NAME}.mp3"

    echo "Rename: \"$FILE\" → \"$NEW_NAME\""
    mv -- "$FILE" "$NEW_NAME"
  fi
done
