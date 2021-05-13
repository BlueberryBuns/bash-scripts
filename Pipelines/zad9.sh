#!/usr/bin/env bash

#
# Zadanie 9.
# Określić jaka jest najpopularniejsza nazwa pliku wśród źródeł coreutils,
# czyli jaka nazwa występuje najczęściej. Jako wynik zwrócić tylko samą nazwę.
# Źródła znajdują się w katalogu `coreutils-8.32`.
#

find -H "coreutils-8.32" -type f -printf "%f\n" | sort | uniq -c | sort -nr | head -n 1 | tr -s ' ' | cut -d " " -f 3