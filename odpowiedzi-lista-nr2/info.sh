#!/bin/bash
# Zadanie 1 - sprawdzanie info o pliku

plik="$1"
akcja="$2"

case "$akcja" in
  size)
    echo "Rozmiar pliku w bajtach:"
    stat -c %s "$plik"
    echo "Rozmiar czytelny:"
    ls -lh "$plik" | awk '{print $5}'
    ;;
  perms)
    echo "Uprawnienia symboliczne:"
    ls -l "$plik" | awk '{print $1}'
    echo "Uprawnienia numeryczne:"
    stat -c %a "$plik"
    ;;
  owner)
    echo "Właściciel i grupa pliku:"
    stat -c "%U %G" "$plik"
    ;;
  *)
    echo "Użycie: $0 nazwa_pliku [size|perms|owner]"
    ;;
esac
