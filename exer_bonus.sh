#!/bin/bash

echo 'Bonus: Construir scripts que implementem as seguintes funcionalidades:'
bonus(){

  LIST=$(cut -d, -f$1 arq.csv | grep -v $2 | sort | uniq)

  BIGGER=0

  for ITEM in $LIST; do

    if [ $1 -gt 16 ]
      then
        SUM=($(cut -d, -f$1,16 arq.csv | grep $ITEM | cut -d, -f1 | grep -v "\-.*" | grep -v NA | paste -sd+ - | bc))
      else
        SUM=($(cut -d, -f$1,16 arq.csv | grep $ITEM | cut -d, -f2 | grep -v "\-.*" | grep -v NA | paste -sd+ - | bc))
    fi

    if [ $SUM -gt $BIGGER ]; then
      BIGGER=$SUM
    fi

    for NUMBER in "${SUM}, ${ITEM}"; do
      IFS=',' read key val <<< $NUMBER
      map[$key]=$val
    done

  done

  echo "${map[$BIGGER]}: ${BIGGER}"

}

echo '1. Listar qual ITEM teve o maior tempo total de atrasos (atrasos somente na decolagem).'
COMPANY_COLUMN=9
COMPANY_CAPTION=UniqueCarrier
bonus ${COMPANY_COLUMN} ${COMPANY_CAPTION}

echo '2. Listar qual aeroporto teve o maior tempo total de atrasos (atrasos somente na decolagem).'
AIRPORT_COLUMN=17
AIRPORT_CAPTION=Origin
bonus ${AIRPORT_COLUMN} ${AIRPORT_CAPTION}