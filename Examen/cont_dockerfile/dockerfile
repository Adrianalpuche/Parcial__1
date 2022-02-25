FROM php:7.3-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN a2enmod rewrite

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql mysqli mbstring exif pcntl bcmath gd zip

# Install composer
#RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY php.ini $PHP_INI_DIR/php.ini
# Get latest Composer
#COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
