#!/bin/bash
# Zadanie 7 - Przekierowania i urządzenia pseudo

# 1. Wyświetl listę procesów do pliku procesy.txt
ps aux > ~/lista-1/odpowiedzi/procesy.txt

# 2. Wyświetl błędy polecenia do błędy.txt, stdout do /dev/null
ls /nieistniejacy-katalog > /dev/null 2> ~/lista-1/odpowiedzi/bledy.txt

# 3. Generuj losowy plik binarny 10 MB z /dev/urandom
dd if=/dev/urandom of=~/lista-1/odpowiedzi/losowe_dane.bin bs=1M count=10

# 4. Nadpisz plik temp.txt zawartością /dev/null
cat /dev/null > ~/lista-1/odpowiedzi/temp.txt
