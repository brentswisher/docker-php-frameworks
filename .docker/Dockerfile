FROM php:7.3.6-apache

COPY ./gvsu/ /www/gvsu
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /www/gvsu

RUN docker-php-ext-install mbstring pdo pdo_mysql \
	&& chown -R www-data:www-data /www/gvsu \
    && a2enmod rewrite