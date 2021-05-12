#!/usr/bin/env bash

#
# Zadanie 7.
# Odnaleźć w pliku `dodatkowe/ps-aux` proces, który zużywa najwięcej czasu
# procesora (trzecia kolumna). Jako wynik zwrócić numer procesu (druga kolumna)
# oraz po spacji pełną nazwę procesu (wszystko od 11 kolumny do końca wiersza).
#
var="$(grep "[0-9]" dodatkowe/ps-aux | tr -s ' ' |  cut -d " " -f 3 | sort -r | head -n 1)"
echo "$(grep ${var} dodatkowe/ps-aux |  tr -s ' ' |  cut -d " " -f 2 ) $(grep ${var} dodatkowe/ps-aux |  tr -s ' ' |  cut -d " " -f 11- )" 