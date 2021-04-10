#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 3 – semestr letni 2020/2021
#
# Celem zajęć jest pogłębienie wiedzy na temat struktury systemu plików,
# poruszania się po katalogach i kontroli uprawnień w skryptach powłoki.
#
# Przygotowane rozwiązania nie muszą być całkowicie uniwersalne. Zakładamy,
# że ogólna struktura katalogów się nie zmienia (nie będzie już więcej/mniej
# poziomów podkatalogów), jednakże same nazwy i zawartości plików (o ile
# nie są podane wprost w treści zadań) mogą być dowolne i ulegać zmianie,
# a przygotowane rozwiązania nadal powinny działać.
#
# Wszystkie chwyty dozwolone, ale ostatecznie w wyniku ma powstać tylko to,
# o czym mowa w treści zadania – tworzone samodzielnie ewentualne tymczasowe
# pliki pomocnicze należy usunąć.
#

#
# Zadanie 1.
# Utworzyć w katalogu `ddd` dowiązanie twarde o nazwie `pierwszy`
# do pliku `podstawa` z katalogu `aaa`. Nie tworzyć dowiązania,
# jeśli jakikolwiek plik o nazwie `pierwszy` już istnieje w `ddd`.
#

dest_dir='ddd'
link_name='pierwszy'
file='aaa/podstawa'

foo(){
    link_exists=0
    if [ -e "${1}/${2}" ]; then
        echo "istnieje!"
        link_exists=1
    else
        echo "nie istnieje"
    fi

    if [ ! link_exists ]; then
        ln "${3}" "${1}/${2}"
        echo "Utworzono dowiązanie twarde"
    else
        echo "Nie utworzono dowiązania"
    fi
}

foo "${dest_dir}" "${link_name}" "${file}"