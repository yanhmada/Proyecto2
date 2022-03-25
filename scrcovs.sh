#!/bin/sh

#Descomprimir archivo
unzip datos_abiertos_covid19_22.03.2022.zip

#cortar datos y guardar en nuevo csv

csvcut -c 36,8,6,9,13,16,18 220322COVID19MEXICO.csv > datoscov.csv 
#Incluir solo casos confirmados
csvgrep -c 1 -r "[123]" datoscov.csv  > filtrado.csv &&\
#Incluir solo datos sonora
csvgrep -c ENTIDAD_RES -m "26" filtrado.csv > filsonora.csv
echo file is now processed
# remover zip
rm datos_abiertos_covid19_22.03.2022.zip