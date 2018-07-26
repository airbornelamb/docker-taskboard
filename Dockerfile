FROM php:5-apache
MAINTAINER Josh Lamb

ENV PROJECT /var/www/html

RUN apt-get update && apt-get install -y sqlite php5-sqlite git

RUN a2enmod rewrite
RUN a2enmod expires

RUN git clone https://github.com/kiswa/TaskBoard $PROJECT

WORKDIR $PROJECT

RUN ./build/composer.phar install

RUN chmod -R +w $PROJECT/api/
RUN chown -R www-data:www-data $PROJECT/
