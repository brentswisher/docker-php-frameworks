FROM php:7.3.6-apache

COPY ./gvsu/ /www/gvsu
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf
# COPY .docker/docker-php-ext-intl.ini /usr/local/etc/php/conf.d/

WORKDIR /www/gvsu

RUN apt-get update \ 
    && apt-get install -y libicu-dev \
	&& docker-php-ext-install mbstring pdo pdo_mysql \
	&& docker-php-ext-configure intl \
    && docker-php-ext-install intl \
	&& chown -R www-data:www-data /www/gvsu \
    && a2enmod rewrite


        # && sudo apt-get install -y zlib1g-dev libicu-dev g++ \