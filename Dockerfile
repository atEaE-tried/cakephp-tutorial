FROM php:7.4

# argument setting
ARG approot=/app

# workspace
WORKDIR ${approot}

# work
COPY --from=composer /usr/bin/composer /usr/bin/composer

# update & install dev package
RUN apt-get update && apt-get install -y --no-install-recommends \
    libicu-dev \
    git \
    && rm -rf /var/lib/apt/lists/*

# add php module
RUN docker-php-ext-install intl \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install pdo_mysql
