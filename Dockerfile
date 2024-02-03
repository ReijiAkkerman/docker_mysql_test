# syntax=docker/dockerfile:1
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
apt-get install -y git && \
apt-get install -y apache2 && \
apt-get install -y mysql-server && \
apt-get install -y php && \
apt-get install -y php-mysql

COPY 000-default.conf /etc/apache2/sites-available/
COPY php.ini /etc/php/8.1/apache2/

#RUN cd /var/www/ && \
#git clone https://github.com/reijiakkerman/aniproject.ru.git && \
#mv aniproject.ru/ html/ && \
#service apache2 restart 

WORKDIR /src

COPY configure start counter apache.conf test.php .

#CMD ["/bin/bash", "-c", "/src/start"]
