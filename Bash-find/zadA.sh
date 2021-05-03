#!/usr/bin/env bash

#
# Zadanie 10.
# Wyszukać pliki o nazwach `core.c` oraz `irq.c`, które nie są związane
# z architekturą `mips` (wyłączamy katalog o tej nazwie z poszukiwań)
# i mają rozmiar co najwyżej 1kiB – chyba, że są to pliki związane z obsługą
# sieci Bluetooth (znajdują się gdzieś wewnątrz katalogu o nazwie `bluetooth`),
# to interesują nas takie, które mają przynajmniej 30kiB. Jako wynik proszę
# wyświetlić po prostu ścieżki do takich plików.
#


find -L "linux-5.11.13" -name "mips" -prune -o \( -type f \( -name "core.c" -o -name "irq.c" \) -a \( \( -path "*bluetooth*" -a -size +30k \) -o \( -size 1k \) \) \) -printf "%p\n" #"%s %p\n"