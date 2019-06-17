FROM php:7.3.6-apache

COPY ./www/ /www
COPY .docker/vhost.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /www

RUN apt-get update \ 
    && apt-get install -y libicu-dev \
	&& docker-php-ext-install mbstring pdo pdo_mysql \
	&& docker-php-ext-configure intl \
    && docker-php-ext-install intl \
	&& chown -R www-data:www-data /www \
    && a2enmod rewrite