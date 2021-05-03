#!/usr/bin/env bash

#
# Zadanie 7.
# Wyszukać wszystkie pliki języka Python (rozszerzenie .py na końcu nazwy),
# których nazwa rozpoczyna się wielką literą oraz nie są one wykonywalne.
# Wyświetlić same nazwy pasujących plików, każdą nazwę w osobnej linii.
#

find -L "linux-5.11.13" -type f ! -executable -name "[[:upper:]]*.py" -printf "%f\n"
