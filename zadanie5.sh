#!/bin/bash

# Zadanie 5 - Archiwizacja plików .conf z /etc
backup_dir=~/lista-1/archiwum
timestamp=$(date +%Y-%m-%d)
archive_name="configs-backup-$timestamp.tar"

# Tworzenie archiwum tar
sudo tar -cf "$backup_dir/$archive_name" -C /etc *.conf

# Kompresja z zstd
sudo zstd -v "$backup_dir/$archive_name"

# Wyświetlenie rozmiaru archiwum
ls -lh "$backup_dir"/
