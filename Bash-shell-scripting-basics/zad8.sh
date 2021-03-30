#!/usr/bin/env bash

#
# Zadanie 8.
# Utworzyć kopię zapasową wszystkich ważnych plików z katalogów `aaa` i `bbb`
# wewnątrz katalogu `zapasy` w `ddd`. Ważne pliki to takie, które zostały
# zabezpieczone przed modyfikacją (czyli nie mamy prawa zapisu do nich).
# Zachować strukturę plików – czyli w katalogu `zapasy` mają powstać katalogi
# `aaa`, `bbb` i wszelkie potrzebne ich podkatalogi.
#


copy_path="ddd/zapasy"

copy_important_files(){
    for element in "${1}"/*; do
        if [ -d "${element}" ]; then
            copy_important_files "${element}"
        elif [ ! -w "${element}" ]; then
            cp --parents "${element}" "${copy_path}"
        else
            echo "Nic się nie dzieje z plikiem ${element}"
        fi
    done
}

copy_important_files "bbb"
copy_important_files "aaa"