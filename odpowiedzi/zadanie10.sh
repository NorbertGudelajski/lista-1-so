#!/bin/bash
# Zadanie 10 - FIFO

# Potok Nazwany
mkfifo moj-potok

# Uruchomiony odczyt w tle 
cat moj-potok &

# Wysyłane dane do potoku
echo "Hello FIFO" > moj-potok

# Usuniecie potok po zakończeniu
rm moj-potok
