#!/bin/bash

echo '2. Descobrir o vôo com maior atraso na chegada (ArrDelay) registrado.'
sort -t, -k15 -n arq.csv |  tail -1