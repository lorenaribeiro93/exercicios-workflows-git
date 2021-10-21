#! /bin/bash

echo '2. Descobrir o vôo com maior atraso na chegada (ArrDelay) registrado.'
sort -t, -k15 -n 2006-sample.csv |  tail -1
