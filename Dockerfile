FROM likesistemas/php:latest
ENV SHOW_ERRORS=true
ENV COMPOSER_INSTALL=true
ENV DB_MIGRATE=true
ENV DB_SEED=true
RUN install-composer
RUN install-xdebug
