#!/usr/bin/env bash
#
# Zadanie 5.
# Policzyć ile jest plików źródłowych języka C (czyli mających rozszerzenie .c
# na końcu pełnej nazwy), których sama nazwa (pomijając rozszerzenie) zawiera
# dokładnie 3 dowolne znaki (czyli cała nazwa pliku ma dokładnie pięć znaków).
# Jako wynik zwrócić tylko i wyłącznie liczbę plików.
#

find -P "linux-5.11.13" -iname "???.c" | wc -l
