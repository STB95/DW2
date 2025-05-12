

###DEEL 01: INSTRUCTIES VOOR BUILDEN IMAGE

FROM ubuntu:20.04
#We starten vanaf deze "ubuntu" image met de tag 20.04 (dockhub)

RUN apt update
RUN apt install apache2 -y

COPY html /var/www/html

### PSST. DEZE CONTAINER DRAAIT OP POORT 80 (zie Dockerfile)
EXPOSE 80 
CMD service apache2 start && bash


