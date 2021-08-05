ARG PHP_VERSION=latest
FROM likesistemas/php:${PHP_VERSION}
ENV SHOW_ERRORS=true
ENV COMPOSER_INSTALL=true
ENV DB_MIGRATE=true
ENV DB_SEED=true
ENV COMPOSER_INSTALL_PARAMS=
RUN install-composer
RUN install-xdebug

RUN echo "memory_limit=-1" > $PHP_GLOBAL_CONFIG_PATH/99_memory-limit.ini

# Install pcov
RUN pecl install pcov

# Install Oh My Zsh
RUN apt-get update && apt-get install -y procps vim
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.1/zsh-in-docker.sh)" -- \
    -t https://github.com/denysdovhan/spaceship-prompt \
    -a 'SPACESHIP_PROMPT_ADD_NEWLINE="false"' \
    -p git \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p https://github.com/zsh-users/zsh-history-substring-search \
    -p https://github.com/zsh-users/zsh-syntax-highlighting 

ENV SHELL /bin/zsh

# Install PHP CS Fixer
ENV PATH="$PATH:/root/.composer/vendor/bin"
RUN composer global require friendsofphp/php-cs-fixer && php-cs-fixer
RUN composer global require phpstan/phpstan && phpstan -V
RUN composer global require "squizlabs/php_codesniffer=*" && phpcs -h && phpcbf -h