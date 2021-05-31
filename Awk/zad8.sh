#!/usr/bin/env bash
#
# Systemy operacyjne 2 – laboratorium nr 6 – semestr letni 2020/2021
#
# Celem zajęć jest zapoznanie się z możliwościami narzędzia awk.
#
# Tradycyjnie nie przywiązujemy zbyt dużej wagi do środowiska roboczego.
# Zakładamy, że format i układ danych w podanych plikach nie ulega zmianie,
# ale same wartości, inne niż podane wprost w treści zadań, mogą ulec zmianie,
# a przygotowane zadania wciąż powinny działać poprawnie (robić to, co trzeba).
#
# Wszystkie chwyty dozwolone, ale w wyniku ma powstać tylko to, o czym jest
# mowa w treści zadania – nie generujemy żadnych dodatkowych plików pośrednich.
# Większość rozwiązań powinno sprowadzić się do jednego, zmyślnego wywołania
# programu `awk` z odpowiednimi argumentami.
# 
#

#
# Zadanie 8.
#
# Plik `dodatkowe/lipsum.txt` zawiera przykładowy tekst z generatora
# http://lipsum.pl/. Używając programu awk, proszę przygotować narzędzie,
# które rozbije tekst w podanym pliku wejściowym w taki sposób, aby każda
# linia miała mniej niż 80 znaków (przy czym staramy się zmakymalizować
# liczbę znaków w każdej linii jak to możliwe). Jako wynik programu wyświetlić
# tekst po przekształceniu.
#


awk 'BEGIN{
    RS=" "; counter=0; ref="";
}{
    if(79 - (counter + length($0)) < 0){
        ref = ref"\n"$0
        counter = (length($0) + 1)
    }else if( NR!=1 ){
        counter = (counter + length($0) + 1)
        ref = ref" "$0
    }else{
        ref = $0
        counter = (counter + length($0))
    }
}END{
    printf ref
}' dodatkowe/lipsum.txt