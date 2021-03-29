#!/usr/bin/env bash

#
# Zadanie 6.
# Odnaleźć w katalogu `bbb` plik, którego zawartość pokrywa się z zawartością
# pliku `bardzo tajna treść` (jest on w katalogu `ddd`) i skopiować znaleziony
# plik do katalogu `ddd`, jeśli jeszcze go tam nie ma.
#
classified_content="ddd/bardzo tajna treść"
dir="ddd"
checked_folder="bbb"

check_file(){
for element in "${1}"/*; do
    if [ -d "${element}" ]; then
        check_file "${element}" "${2}" "${3}"
    elif [ -f "${element}" ]; then
        if cmp -s "${element}" "${2}"; then
            cp -n "${element}" ${3}
            echo "File ${element} has been copied to ${3}"
        fi
    else
        echo "Error"
    fi
done;
}

check_file "${checked_folder}" "${classified_content}" "${dir}"