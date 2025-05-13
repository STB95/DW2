# DEEL 1: IMAGE BUILD-INSTRUCTIES
FROM ubuntu:20.04

RUN apt update 
RUN apt install apache2 -y 
RUN apt clean

# Maak uwen buildtime.txt aan tijdens dat de image aan het builden is
RUN echo "$(date -u)" > /var/www/html/buildtime.txt

# Kopieer lokale HTML-bestanden naar de juiste locatie in de container
COPY html/ /var/www/html/

# DEEL 2: CONTAINER RUNTIME-INSTRUCTIES
WORKDIR /home/ubuntu/
EXPOSE 80/tcp

CMD service apache2 start && bash
