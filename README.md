# docker-php-frameworks
A Docker configuration set up to help explore various php frameworks

## How do I use this?

* Clone the repository to your local machine
* Following the directions below, setup the framework you want to test
* run docker-compose up --build from the project root
* The source files in the /www/ folder will be mapped to https://localhost:8080/

*Note: Some of the frameworks will need you to have composer installed locally to complete installation, you can do so by following the directions at https://getcomposer.org/doc/00-intro.md*

## Supported Frameworks

#### Base install
This is the base installation the frameworks use, includes php v7.3.6 and a mySQL 5.7
##### Installation
* Checkout branch master
---
#### Codeigniter
Includes codeignitor 3.1.10
##### Installation
* Checkout branch codeigniter
* Your project will be at http://localhost:8080/codeignitor/
---
#### Laravel
Includes laravel 5.8.17
##### Installation
* Checkout branch laravel
* Move to the /www/laravel directory
* Run `composer install` to install dependencies into the /www/laravel/vendor folder
* Your project will be at http://localhost:8080/laravel/public/
---
#### cakePHP
Includes cakePHP 3.7.8 Red Velvet
##### Installation
* Checkout branch cakephp
* Move to the /www/cakephp directory
* Run `composer install --ignore-platform-reqs` to install dependencies into the /www/cakephp/vendor folder
* Your project will be at http://localhost:8080/cakephp/
---
#### Symfony
Includes Symfony 4.3.1
##### Installation
* Checkout branch symphony
* Move to the /www/symphony directory
* Run `composer install` to install dependencies into the /www/symphony/vendor folder
* Your project will be at http://localhost:8080/symphony/public
