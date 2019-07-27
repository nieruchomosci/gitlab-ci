FROM php:7.2-cli

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME=/opt/composer/
ENV PATH /opt/composer/bin:$PATH

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer
