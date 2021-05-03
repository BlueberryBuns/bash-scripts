#!/usr/bin/env bash

#
# Zadanie 6.
# Odszukać wszystkie pliki, których rozmiar jest mniejszy od 1 kiB (kibibajta),
# ale jednocześnie tylko ich bezpośredni właściciel (użytkownik) może zmienić
# ich zawartość. Podać ile dokładnie jest takich plików (zwrócić wyłącznie
# liczbę plików).
#

find -P "linux-5.11.13" -size -1024c -type f -perm /u=w -a -not -perm /g=w,o=w | wc -l
