# PHP & Apache cha image vapara (LAMP stack sathi)
FROM php:7.4-apache

# Website cha code container madhe copy kara
COPY . /var/www/html/

# Port 80 open kara
EXPOSE 80

# Apache server start kara
CMD ["apache2-foreground"]
