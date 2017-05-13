FROM ubuntu:latest

RUN apt-get update -y && apt-get install apache2

COPY index.html /var/www/html/index.html

COPY script.sh /usr/bin/

RUN chmod 777 /usr/bin/script.sh 

CMD ["sh","-C","/usr/bin/script.sh"]

