#!/bin/bash

while IFS= read -r domain; do
  if [[ -n "$domain" ]]; then  # Only call gau if the line is not empty
    echo "Processing $domain"
    gau --subs --threads 6 --blacklist png,jpg,gif,m3u8,mp4,mp5,avi,svg,css,woff,ttf "$domain" >> output/gau_output.txt
  fi
done < input/domains.txt
