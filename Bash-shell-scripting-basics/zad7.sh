#!/usr/bin/env bash

#
# Zadanie 7.
# Wyszukać w katalogu `bbb` i jego podkatalogach wszystkie pliki zwyczajne
# (nie katalogi!), które są w systemie plików oznaczone jako wykonywalne.
# Utworzyć w katalogu `ddd` plik `ostrzeżenie`, w którym pojawi się informacja
# "Uważaj na te pliki:" oraz lista znalezionych plików (każdy w nowej linii).
#
dir="bbb"
file="ddd/ostrzeżenie"
touch "${file}"
echo "Uważaj na te pliki:" > "${file}"

find_executables(){
for element in "${1}"/*; do
    if [ -d "${element}" ];then
        find_executables "${element}"
    elif [ -f "${element}" -a -x "${element}" ]; then
        echo "$(basename ${element})" >> "${file}"
        echo "$(basename ${element})"
    fi
done 
}

find_executables "${dir}"