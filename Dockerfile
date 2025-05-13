# DEEL 1: IMAGE BUILD-INSTRUCTIES
FROM ubuntu:20.04

RUN apt update 
RUN apt install apache2 -y 
RUN apt clean

# Voeg huidige buildtime toe aan buildtime.txt
RUN date > /var/www/html/buildtime.txt

# Kopieer lokale HTML-bestanden naar de juiste locatie in de container (html host naar apache map)
COPY html/ /var/www/html/

# DEEL 2: CONTAINER RUNTIME-INSTRUCTIES
# Zodat je in juiste folder terechtkomt
WORKDIR /home/ubuntu/

# Expose poort 80 (in de container)
EXPOSE 80/tcp

# Start Apache service bij  opstart container
CMD service apache2 start && bash
