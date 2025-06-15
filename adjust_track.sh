#!/bin/bash

for f in *.mp3; do
  track=$(echo "$f" | grep -oE '^[0-9]+')
  [ -n "$track" ] && id3v2 -T "$track" "$f"
done
