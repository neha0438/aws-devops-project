# Use an official Apache image with PHP support
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html/

# Copy the local website files to the container
COPY . /var/www/html/

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache server in the foreground
CMD ["apache2-foreground"]
