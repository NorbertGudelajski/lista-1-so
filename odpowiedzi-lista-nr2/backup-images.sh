#!/bin/bash

# Skrypt backup-images.sh
# Kopiuje wszystkie pliki graficzne (.jpg, .png, .gif) z podanego katalogu
# do katalogu backup-RRRR-MM-DD i loguje operacje do backup.log

# Sprawdzenie, czy podano argument (ścieżkę do katalogu)
if [ -z "$1" ]; then
    echo "Użycie: $0 <ścieżka do katalogu>"
    exit 1
fi

SOURCE_DIR="$1"

# Tworzenie katalogu docelowego z datą
DATE=$(date +%Y-%m-%d)
DEST_DIR="backup-$DATE"
mkdir -p "$DEST_DIR"

# Inicjalizacja licznika skopiowanych plików
count=0

# Iteracja po wszystkich plikach graficznych w katalogu
for file in "$SOURCE_DIR"/*.{jpg,png,gif}; do
    # Sprawdzenie, czy plik istnieje
    if [ -f "$file" ]; then
        cp "$file" "$DEST_DIR"
        ((count++))
        # Logowanie operacji do backup.log z timestampem
        echo "$(date '+%Y-%m-%d %H:%M:%S') Skopiowano plik: $file" >> backup.log
    fi
done

# Wyświetlenie liczby skopiowanych plików
echo "Skopiowano plików: $count"

