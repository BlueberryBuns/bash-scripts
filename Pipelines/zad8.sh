#!/usr/bin/env bash

#
# Zadanie 8.
# W ilu plikach źródłowych pakietu coreutils występuje linia, której jedyną
# zawartością jest `#include <stdio.h>` (i nic poza tym w ramach tej linii).
# Jako wynik proszę zwrócić tylko i wyłącznie liczbę odpowiednich plików.
# Źródła znajdują się w katalogu `coreutils-8.32`.
#

find -P "coreutils-8.32" -type f | while read line; do grep -x "#include <stdio.h>" "${line}" | head -1 ; done |wc --lines
#find -P "coreutils-8.32" -type f | grep "^(?!\s*$)(?:#include <stdio.h>| )+$-"  #while read line; do grep -x "#include <stdio.h>" "${line}"; done
