#! /bin/bash

echo '6. Utilizando a dica nessa resposta, calcular o tempo de atraso total para a companhia Delta Air Lines. Não esquecer de filtrar linhas com dados faltando e também com valores negativos (casos em que os vôos são adiantados)'
c=$(cut -d, -f9,15 2006-sample.csv | grep DL | cut -d, -f2 | grep -v "\-.*" | grep -v NA | tr ',' '+' | paste -sd+ - | bc)
d=$(cut -d, -f9,16 2006-sample.csv | grep DL | cut -d, -f2 | grep -v "\-.*" | grep -v NA | tr ',' '+' | paste -sd+ - | bc)
echo $((c+d))
