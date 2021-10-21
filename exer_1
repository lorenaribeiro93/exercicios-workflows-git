#!/bin/bash


printf '1. Descobrir a quantiade de atrasos de uma dada companhia passada como parâmetro.'


a=$(cut -d, -f9,15 arq.csv | grep $1 | cut -d, -f2 | grep -v "\-.*" | grep -v NA | grep -v 0 | wc -l)
b=$(cut -d, -f9,16 arq.csv | grep $1 | cut -d, -f2 | grep -v "\-.*" | grep -v NA | grep -v 0 | wc -l)
echo ${a}
echo ${b}
echo $((a+b))
