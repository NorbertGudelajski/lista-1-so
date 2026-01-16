#!/bin/bash

# Deklaracja tablicy asocjacyjnej użytkowników
declare -A users

# Dodanie minimum 5 użytkowników
users[jan.kowalski]="jan.kowalski@example.com"
users[anna.nowak]="anna.nowak@example.com"
users[michal.lewandowski]="michal.lewandowski@example.com"
users[kasia.kowalska]="kasia.kowalska@example.com"
users[piotr.zielinski]="piotr.zielinski@example.com"

# Funkcja wyświetlająca wszystkie elementy
list_all() {
    echo "Lista wszystkich użytkowników:"
    for key in "${!users[@]}"; do
        echo "$key => ${users[$key]}"
    done
}

# Walidacja argumentu
if [ $# -ne 1 ]; then
    echo "Użycie: $0 <login> | list-all"
    exit 1
fi

arg=$1

if [ "$arg" == "list-all" ]; then
    list_all
    exit 0
fi

# Sprawdzenie, czy użytkownik istnieje
if [[ -v users[$arg] ]]; then
    echo "${users[$arg]}"
else
    echo "Użytkownik $arg nie istnieje"
fi
