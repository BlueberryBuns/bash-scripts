#!/usr/bin/env bash

#
# Zadanie 4.
# Odszukać wykonywalne pliki zwykłe i policzyć ile ich jest. Następnie policzyć
# ile jest wykonywalnych skryptów powłoki pośród nich (plików z rozszerzeniem
# .sh na końcu nazwy). Jako wynik zwrócić ułamek w postaci X/Y i nic więcej.
#

echo "$(find -P "linux-5.11.13" -executable -iname "*.sh" | wc -l)/$(find -P "linux-5.11.13" -type f -executable | wc -l)"