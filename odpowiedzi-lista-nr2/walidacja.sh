#!/bin/bash
#Zadanie 2 - walidacja danych CSV
PLIK="$1"

if [[ ! -f "$PLIK" ]]; then
    echo "Plik $PLIK nie istnieje"
    exit 1
fi

LICZBA_KOLUMN=$(head -n1 "$PLIK" | awk -F, '{print NF}')

awk -F, -v kol=$LICZBA_KOLUMN '
{
    if (NF != kol) {
        print "Niepoprawny wiersz nr " NR ": " $0
    }
}
' "$PLIK"

echo "Walidacja zakończona."
