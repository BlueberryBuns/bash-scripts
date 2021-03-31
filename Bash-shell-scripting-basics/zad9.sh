#!/usr/bin/env bash

#
# Zadanie 9.
# W katalogu `zasoby` w `ddd` utworzyć plik `tajne hasła`, który zawierać
# będzie połączoną treść wszystkich plików z katalogu `ccc` (oraz jego
# podkatalogów) – ale tylko takich, które potrafimy przeczytać. Niech każda
# nowa zawartość będzie poprzedzona jakimś wyróżniającym się nagłówkiem
# z nazwą pliku z którego ona pochodzi. Upewnić się także, że w trakcie
# procesu nie zgłoszą nam się problemy z dostępem do plików (to znaczy,
# że na pewno możemy je przeczytać).
#

secrets="ddd/zasoby/tajne hasła"
src_directory="ccc"
if [ -f "${secrets}" ]; then
    rm "${secrets}"
fi
touch "${secrets}"

con_files(){
    for "${element}" in "${1}"/*; do
        if [ -d "${element}" ]; then
            con_files "${element}"
        elif [ -f "${element}" -a -r "${element}" ]; then
            echo "=== $(basename "${element}")" >> "${secrets}"
            echo "$(cat "${element}")" >> "${secrets}"
        fi
    done
}

con_files "${src_dir}"
