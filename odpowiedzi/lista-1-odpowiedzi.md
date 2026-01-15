# Lista 1 - Systemy Operacyjne

# Zadanie 1 - Wyszukiwanie plików

Polecenie:

```bash
find ~ -type f -name "*log." -mtime -7 -size +1M -printf "%s %p\n" | sort -nr > zadanie1.txt

Pliki zadanie1.txt jest pusty, poniewaz w katalogu domowym nie bylo plikow .log wiekszych niz 1MB zmodyfikowanych w ciągu ostatnich 7 dni 
