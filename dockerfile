FROM ubuntu:latest
COPY script.sh /usr/bin/
RUN chmod 777 /usr/bin/script.sh && \
	apt-get update -y

CMD ["sh","-C","/usr/bin/script.sh"]

