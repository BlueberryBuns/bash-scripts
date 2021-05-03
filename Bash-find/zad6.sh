#!/usr/bin/env bash

#
# Zadanie 6.
# Odszukać wszystkie pliki, których rozmiar jest mniejszy od 1 kiB (kibibajta),
# ale jednocześnie tylko ich bezpośredni właściciel (użytkownik) może zmienić
# ich zawartość. Podać ile dokładnie jest takich plików (zwrócić wyłącznie
# liczbę plików).
#
echo XD
find -L "linux-5.11.13" -size 1k | wc -l
