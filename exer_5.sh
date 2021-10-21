#!/bin/bash

echo '5. Contar quantos vôos precisaram ser redirecionados (Diverted).'
cut -d, -f24 2006-sample.csv | grep 1 | wc -l
