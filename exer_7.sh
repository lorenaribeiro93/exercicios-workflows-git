#!/bin/bash

echo '7. Mostrar o tempo total de atrasos para a decolagem de vôos no aeroporto JFK, de Nova Iorque.'
cut -d, -f17,16 2006-sample.csv | grep JFK | cut -d, -f1 | grep -v "\-.*" | grep -v NA | paste -sd+ - | bc
