FROM resin/raspberrypi3-debian:stretch
MAINTAINER Josh Lamb

ENV PROJECT /var/www/html
# Enable systemd
ENV INITSYSTEM on

RUN apt-get update && apt-get install -y --no-install-recommends apache2 curl git openjdk-8-jre php7 php-cli php7.0-sqlite3 libapache2-mod-php7.0 sqlite3 
RUN a2enmod rewrite
RUN a2enmod expires

RUN git clone https://github.com/kiswa/TaskBoard $PROJECT

WORKDIR $PROJECT

RUN ./build/composer.phar install
RUN ./build/build-all

RUN chmod -R +w $PROJECT/api/
RUN chown -R www-data:www-data $PROJECT/
RUN service apache2 restart
