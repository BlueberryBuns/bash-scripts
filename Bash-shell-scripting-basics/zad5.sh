#!/usr/bin/env bash

# Zadanie 5.
# Utworzyć katalog o nazwie `głęboki` wewnątrz katalogu `ddd` i skopiować
# do niego wszystkie pliki zwyczajne (żadnych folderów!) znajdujące się
# w katalogu `bbb` i ewentualnych jego podkatalogach.
# Zakładamy, że katalog `głęboki` mógł już wcześniej istnieć – w takim
# przypadku nie należy tworzyć go na nowo, ale upewnić się, że podczas
# kopiowania nie nadpiszemy żadnych istniejących w nim plików!

directory="ddd/głęboki"
src="bbb"

#Rozwiązanie pierwsze

# if [ ! -d "${directory}" ]; then
# mkdir "${directory}"
# fi

# for element in "${src}"/*; do
#     if [ -d "${element}" ]; then
#         for file in "${element}"/*; do
#             cp -rn "${file}" "${directory}" 
#         done
#         echo "All files has been copied from ${element}" 
#     elif [ -f "${element}" ]; then
#         cp -n "${element}" "${directory}"
#         echo "File ${element} has been copied"
#     else
#         echo "An error has occured"
#     fi
# done

#Rozwiązanie drugie

copy_files(){

if [ ! -d "${2}" ]; then
mkdir "${2}"
fi
for element in "${1}"/*; do
    if [ -d "${element}" ]; then
        copy_files $element $2
    elif [ -f "${element}" ]; then
        cp -rn $element $2
        echo "File ${element} has been copied to ${2}"
    else
        echo "Error"
    fi
done;

}

copy_files $src $directory