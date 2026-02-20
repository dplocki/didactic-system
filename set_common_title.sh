#!/bin/bash

for f in *.mp3; do
  title=$(ls *.mp3 | head -n1 | sed -E 's/^[0-9]+[.-_ ]*//; s/[-_ ]*[0-9]+\.mp3$//')
  [ -n "$title" ] && id3v2 --song "$title" "$f"
done
