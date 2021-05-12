#!/usr/bin/env bash

#
# Zadanie 2.
# Na podstawie pliku `dodatkowe/etc-passwd`, wypisać nazwy użytkowników
# na których można się potencjalnie zalogować – innymi słowy mają oni wpisane
# coś innego niż `/bin/nologin` i `/bin/false` jako powłokę (ostatnia kolumna
# / wartość w każdym wierszu). Każdą nazwę użytkownika wypisać w osobnej linii.
#

grep --invert-match "/bin/nologin" dodatkowe/etc-passwd | grep --invert-match "bin/false" | cut -d \: -f 1