#!/usr/bin/env bash

#
# Zadanie 4.
# Utworzyć w katalogu `ddd` plik o nazwie `całość`, który będzie zawierał
# połączoną zawartość wszystkich plików zwykłych z katalogu `aaa`.
# Jeżeli plik `całość` istnieje, to należy nadpisać jego zawartość.
# Kolejność łączenia plików nie ma znaczenia.
#

dest_file="ddd/całość"
files="aaa/*"

if [ -f "${dest_file}" ]; then
    rm "${dest_file}"
    echo "File ${dest_file} has been deleted"
fi

for file in $files
do
    echo $(cat "${file}") >> $dest_file
    echo "File ${file} content has been copied to ${dest_file}"
done