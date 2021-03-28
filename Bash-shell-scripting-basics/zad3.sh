#!/usr/bin/env bash

#
# Zadanie 3.
# Skopiować wszystkie możliwe pliki z katalogu `aaa` do katalogu `ddd`,
# upewniając się, że nie nadpiszemy żadnego istniejącego pliku w `ddd`.
#

src_dir="aaa/*"
dest_dir="ddd"
cp -rn $src_dir $dest_dir
