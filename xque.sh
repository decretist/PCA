#!/bin/bash
#
# Paul Evans (10evans@cua.edu)
# 28 May 2020
#
for file in Gratian0 Gratian1 dePen Gratian2 ; do
    echo $file.txt
    ./xque.py < corpus_a/$file.txt > corpus_b/$file.txt
done

# foreach n ( 0 1 2 3 )
# echo "Gratian$n.txt"
#     xque.py < input/Gratian$n.txt > output/Gratian$n.txt
# end
