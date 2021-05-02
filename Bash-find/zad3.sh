#!/usr/bin/env bash

#
# Zadanie 3.
# Policzyć ile plików zwykłych znajduje się w źródłach systemu Linux.
# Jako wynik zwrócić tylko i wyłącznie liczbę plików.
#

find -P "linux-5.11.13" -type f -a -not -type l | wc -l