#!/bin/bash

# Funkcje matematyczne
dodaj() {
    echo $(($1 + $2))
}

odejmij() {
    echo $(($1 - $2))
}

pomnoz() {
    echo $(($1 * $2))
}

podziel() {
    if [ $2 -eq 0 ]; then
        echo "Błąd: dzielenie przez 0"
        exit 1
    fi
    echo $(($1 / $2))
}

# Sprawdzenie liczby argumentów
if [ $# -ne 3 ]; then
    echo "Użycie: $0 liczba1 operator liczba2"
    exit 1
fi

liczba1=$1
operator=$2
liczba2=$3

# Walidacja, czy liczby są liczbami całkowitymi
re='^-?[0-9]+$'
if ! [[ $liczba1 =~ $re ]] || ! [[ $liczba2 =~ $re ]]; then
    echo "Błąd: argumenty muszą być liczbami całkowitymi"
    exit 1
fi

# Wybór operacji
case $operator in
    +)
        wynik=$(dodaj $liczba1 $liczba2)
        ;;
    -)
        wynik=$(odejmij $liczba1 $liczba2)
        ;;
    \*)
        wynik=$(pomnoz $liczba1 $liczba2)
        ;;
    /)
        wynik=$(podziel $liczba1 $liczba2)
        ;;
    *)
        echo "Nieznany operator. Użyj +, -, *, /"
        exit 1
        ;;
esac

echo "Wynik: $wynik"
