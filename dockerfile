FROM ubuntu:latest

RUN apt-get update -y

COPY index.html /var/www/html/index.html

COPY script.sh /usr/bin/

RUN chmod 777 /usr/bin/script.sh 

CMD ["sh","-C","/usr/bin/script.sh"]

