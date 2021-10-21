#! /bin/bash

echo '8. Mostrar o tempo total de atrasos para pousos no Aeroporto Internacional de Los Angeles.'
cut -d, -f18,15 2006-sample.csv | grep LAX | cut -d, -f1 | grep -v "\-.*" | grep -v NA | paste -sd+ - | bc
