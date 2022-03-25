
#Imagen
FROM ubuntu:latest

WORKDIR /root

RUN apt-get -y update  &&\
    apt-get install -yq curl unzip less vim nano git pip tldr python3.6 python3-pip &&\
    pip install csvkit
    
RUN curl -L -O https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/historicos/2022/03/datos_abiertos_covid19_22.03.2022.zip     
ADD scrcovs.sh /root/scrcovs.sh 
RUN chmod u+x scrcovs.sh
CMD  ["bash", "scrcovs.sh"]
