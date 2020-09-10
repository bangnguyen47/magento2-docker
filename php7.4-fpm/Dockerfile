FROM php:7.4-fpm
# Install dependencies
RUN apt-get update \
    && apt-get install -y \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libxslt1-dev \
    sendmail-bin \
    sendmail \
    sudo \
    libzip-dev \
    libonig-dev

# Configure the gd library
RUN docker-php-ext-configure \
    gd --with-freetype --with-jpeg

# Install required PHP extensions

RUN docker-php-ext-install \
    dom \
    gd \
    intl \
    mbstring \
    pdo_mysql \
    xsl \
    zip \
    soap \
    bcmath \
    pcntl \
    sockets

# Install Xdebug (but don't enable)
#RUN pecl install -o -f xdebug

RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

ADD ./etc/php-fpm.ini $PHP_INI_DIR/conf.d/zz-magento.ini

# Get composer installed to /usr/local/bin/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

CMD ["php-fpm"]