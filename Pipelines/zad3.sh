#!/usr/bin/env bash

#
# Zadanie 3.
# W pliku `dodatkowe/cezar` znajduje się treść zaszyfrowana szyfrem Cezara
# z kluczem k=3. Proszę odkryć zaszyfrowaną wiadomość, czyli zrealizować
# następujące przekształcenie: a->x, b->y, c->z, d->a, e->b, ..., z->w.
# Wiadomość ogranicza się wyłącznie do małych znaków alfabetu łacińskiego.
# Wyświetlić wyłącznie odszyfrowaną treść, nic poza tym.
#

grep " *" dodatkowe/cezar | tr '[a-z]' '[x-za-w]'