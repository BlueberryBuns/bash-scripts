#!/usr/bin/env bash
#
# Zadanie 1.
# Sprawdzić, czy w katalogu `ddd` istnieje plik o nazwie `pierwszy`,
# a jeśli nie, to go utworzyć. Zawartość pliku nie ma znaczenia.
#
plik='ddd/pierwszy'

if [ ! -f "${plik}" ]; then
    touch "${plik}"
    echo "The file has been created"
fi