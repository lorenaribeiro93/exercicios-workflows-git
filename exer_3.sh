#!/bin/bash

echo '3. Descobrir o vôo com maior atraso na saída (DepDelay) registrado.'
sort -t, -k16 -n arq.csv |  tail -1
