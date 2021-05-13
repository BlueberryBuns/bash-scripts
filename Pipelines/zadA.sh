#!/usr/bin/env bash

#
# Zadanie 10.
# Plik `dodatkowe/listaSluchaczy_E07-19x.csv` odwzoruje listę studentów
# zapisanych na kurs, którą prowadzący może pobrać z systemu Edukacja.CL
# (co do struktury, z poprawionym już kodowaniem). Proszę wygenerować
# adresy e-mail do wszystkich słuchaczy, wiedząc, iż numery albumów
# znajdują się w drugiej kolumnie od pewnego miejsca w pliku, zaś
# numer indeksu stanowi 6 ostatnich znaków z zapisanego numeru albumu.
# Format każdego adresu e-mail to {nr-indeksu}@student.pwr.edu.pl.
# Każdy adres e-mail wyświetlać w osobnej linii, nie wyświetlać nic ponadto.
#

echo "$(grep " *" dodatkowe/listaSluchaczy_E07-19x.csv | cut -d ";" -f 2 | grep "\_[0-9]*" | cut -c5-10 | while read line; do echo ${line}@student.pwr.edu.pl ; done )"