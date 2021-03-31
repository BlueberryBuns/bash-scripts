#!/usr/bin/env bash

#
# Zadanie 10.
# Stworzyć zestaw nowych plików w katalogu `zasoby` w `ddd`. Nazwy plików
# do utworzenia zostały podane w kilku plikach `nazwy-1`, `nazwy-2`, itd.,
# które również znajdują się w katalogu `ddd`. Zawartość tworzonych plików
# powinna stanowić liczba, mówiąca ile razy dana nazwa została powtórzona
# w plikach źródłowych `nazwa-...` – to znaczy, domyślnie nowo tworzone pliki
# mają mieć jako zawartość zero (0), jeśli dana nazwa się powtórzy (plik już
# istnieje) to zwiększamy tę wartość na jeden, dwa, itd.
# Zadbać o to, aby każde uruchomienie skryptu miało ten sam efekt – czyli
# aby po drugim uruchomieniu nadal istniały pliki o wartości zero.
# Upewnić się przy tym, że nie usuniemy/nadpiszemy niczego, co było pierwotnie
# w katalogu `zasoby` (możemy zmodyfikować tylko pliki, które podano w plikach
# źródłowych `nazwa-...`; każda nazwa to osobna linia w tych plikach).
#

array=("ddd/nazwy-1" "ddd/nazwy-2" "ddd/nazwy-3" "ddd/nazwy-4")
lines=()
clean_start=1

foo(){
    for filename in "${@}"; do
        if [ -f ddd/zasoby/"${filename}" ]; then
            echo $(($(cat ddd/zasoby/"${filename}")+1)) > ddd/zasoby/"${filename}"
            echo ddd/zasoby/"${filename}" $(cat ddd/zasoby/"${filename}")
        else
            touch ddd/zasoby/"${filename}"
            echo 0 > ddd/zasoby/"${filename}"
        fi
    done
}

del_foo(){
    for filename in "${@}"; do
        if [ -f ddd/zasoby/"${filename}" ]; then
            rm ddd/zasoby/"${filename}"
            echo "file ${filename} has been deleted"
        fi
    done
}

for file in "${array[@]}"; do
    if [ -f "${file}" ]; then
        IFS=$'\n' read -d '' -r -a lines < "${file}"
        del_foo "${lines[@]}"
    else
        echo "Nie znaleziono pliku o nazwie ${file}"
    fi
done

for file in "${array[@]}"; do
    if [ -f "${file}" ]; then
        IFS=$'\n' read -d '' -r -a lines < "${file}"
        foo "${lines[@]}"
    else
        echo "Nie znaleziono pliku o nazwie ${file}"
    fi
done