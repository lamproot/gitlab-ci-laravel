FROM debian:jessie

LABEL maintainer "kairee <kaireewu@gmail.com>"

ARG DEBIAN_FRONTEND=noninteractive

# Create user "laravel"
RUN adduser --disabled-password --gecos "" laravel

# Install curl
RUN apt-get update && apt-get install -y curl apt-utils

# Add key and repository
RUN curl -sLo /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
    echo "deb https://packages.sury.org/php/ jessie main" > /etc/apt/sources.list.d/php.list

# Add nodejs repository
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -

# Install packages
RUN apt-get update && apt-get install -y apt-transport-https lsb-release ca-certificates build-essential git unzip supervisor mysql-client openssh-client vim && \
    apt-install -y php7.1-fpm php7.1-bcmath php7.1-cli php7.1-curl php7.1-mysql php7.1-mcrypt php7.1-mbstring php7.1-dom php7.1-xdebug php7.1-tidy php7.1-gd php7.1-zip nodejs

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    mv composer.phar /usr/local/bin/composer && \
    php -r "unlink('composer-setup.php');"
