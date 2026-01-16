#!/bin/bash

# katalog źródłowy jako argument
src_dir="$1"

# katalog docelowy z datą
dest_dir="backup-$(date +%Y-%m-%d)"
mkdir -p "$dest_dir"

# licznik skopiowanych plików
count=0

# kopiowanie plików .jpg .png .gif
for f in "$src_dir"/*.{jpg,png,gif}; do
  if [ -f "$f" ]; then
    cp "$f" "$dest_dir"
    ((count++))
  fi
done

# logowanie operacji
echo "$(date '+%Y-%m-%d %H:%M:%S') Skopiowano $count plików" >> backup.log

# wyświetlenie liczby plików
echo "$count"
