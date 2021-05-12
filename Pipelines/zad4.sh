#!/usr/bin/env bash

#
# Zadanie 4.
# Analizując zawartość pliku `dodatkowe/ps-aux`, który zawiera przykładową
# listę uruchomionych procesów (wynik komendy `ps aux`), określić nazwy
# użytkowników, mających aktualnie uruchomione jakieś procesy.
# Nazwy użytkowników znajdują się w pierwszej kolumnie w pliku.
# Proszę pamiętać o pominięciu nagłówka z nazwami kolumn.
# Wyświetlić same nazwy, bez powtórzeń.
#

cat dodatkowe/ps-aux | tr -s '    ' | grep "[0-9]" | cut -d " " -f 1 | sort -u