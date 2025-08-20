FROM php:8.1-apache

# Enable Apache mod_rewrite (optional, but useful for PHP apps)
RUN a2enmod rewrite

# Copy project files to Apache root
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Expose port 80 for Render
EXPOSE 80
