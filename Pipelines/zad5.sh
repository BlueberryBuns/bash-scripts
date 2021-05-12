#!/usr/bin/env bash

#
# Zadanie 5.
# Na podstawie pliku `dodatkowe/etc-services` określić jakie numery portów
# możemy standardowo skojarzyć z usługą syslog*. Interesują nas same numery
# portów, bez protokołów i bez powtórzeń, każdy wypisany w osobnej linii.
# (* – wyszukać wszystkie linie, rozpoczynające się od słowa 'syslog')
#

grep "syslog*" dodatkowe/etc-services | tr -s ' ' | cut -d " " -f 2 | cut -d \/ -f 1 | sort -u