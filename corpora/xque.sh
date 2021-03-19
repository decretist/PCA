#!/bin/bash
#
# Paul Evans (10evans@cua.edu)
# 19 March 2021
# 28 May 2020
#
for file in Gratian0 Gratian1 dePen Gratian2 ; do
    echo $file.txt
    ./xque.py < final/$file.txt > final_xque/$file.txt
    ./xque.py < final_noquote/$file.txt > final_noquote_xque/$file.txt
done

