#!/usr/bin/env bash

#
# Zadanie 9.
# Znaleźć pliki zwykłe, które mają pomiędzy 1MiB a 10MiB oraz nie zawierają
# żadnych cyfr w nazwie pliku. Jako wynik proszę wyświetlić rozmiary tych
# plików (w Bajtach) i same ich nazwy, każdy plik jako wpis w osobnej linii,
# rozdzielone jedną spacją (<rozmiar> <nazwa>\n).
#

find -L "linux-5.11.13" -not -name '*[0-9]*' -size +1M -a -size -10M -a -printf "%s %f\n"

