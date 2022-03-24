#!/bin/sh


#descargar y descomprimir datos
curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/historicos/2022/03/datos_abiertos_covid19_22.03.2022.zip\

unzip datos_abiertos_covid19_22.03.2022.zip

#cortar datos y guardar en nuevo csv
csvcut -c 36,8,6,9,13,16,18 220322COVID19MEXICO.csv > datoscov.csv &&\
#Filtrar, solo casos confirmados
csvgrep -c 1 -r "[123]" datoscov.csv  > filtrado.csv |csvgrep -c ENTIDAD_RES -m "26" 
echo file is now processed

#  remover zip
rm datos_abiertos_covid19_22.03.2022.zip