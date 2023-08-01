FROM alpine:3.17.3 as without

WORKDIR app

# Install common tools
RUN apk add --no-cache \
    bash \
    git \
    openssl \
    openssh \
    wget \
    patch \
    rsync \
    php81=~8.1 \
    php81 \
    php81-json \
    php81-phar \
    php81-iconv \
    php81-curl \
    php81-openssl \
    php81-mbstring \
    php81-tokenizer

# Install composer
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --version="2.3.5" --quiet --install-dir=/usr/local/bin --filename=composer
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_NO_INTERACTION 1
ENV COMPOSER_EXIT_ON_PATCH_FAILURE 1

RUN composer require --dev phpstan/phpstan

ADD test.php /app/test.php

CMD bash -c echo /app/test.php ; vendor/bin/phpstan analyze --level 9 test.php


FROM without as with
RUN apk add --no-cache \
    php81-simplexml \
