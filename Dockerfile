
#Imagen
FROM ubuntu:latest

LABEL  Yanet Hernandez Mada

WORKDIR /root

RUN apt-get update -y &&\
    apt-get -yq  install curl unzip less vim nano git pip tldr python3.6 python3-pip &&\
    pip install csvkit
    

ADD scrcovs.sh /root/scrcovs.sh 
RUN chmod u+x scrcovs.sh

CMD  ["bash", "scrcovs.sh"]
