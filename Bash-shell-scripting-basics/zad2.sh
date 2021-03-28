#!/usr/bin/env bash

#
# Zadanie 2.
# Zweryfikować istnienie i zawartość pliku `drugi` z katalogu `ddd`.
# Plik powinien zawierać napis `Ala ma kota.`. Jeśli czegoś brakuje
# to odpowiedni plik stworzyć lub nadpisać istniejący.
#

file='ddd/drugi'
string="Ala ma kota"

if [ ! -f "${file}" ]; then
    echo  $string > ${file}
    echo "New file created"
elif [ ! "$(cat ${file})" == "$string" ]; then
    echo  $string > ${file}
    echo "File overwritten"
fi