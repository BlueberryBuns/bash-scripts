#!/usr/bin/env bash

#
# Zadanie 2.
# Odnaleźć wszystkie dowiązania miękkie. Jako wynik należy wyświetlić ścieżki
# względne do takich plików (dowiązań, a nie do wskazywanych przez nie celów!).
#

find -P "linux-5.11.13/" -type l
