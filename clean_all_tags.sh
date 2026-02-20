#!/bin/bash

for f in *.mp3; do
  id3v2 -D "$f"
done

