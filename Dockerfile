FROM webdevops/php-nginx:8.2

COPY vhost.conf /opt/docker/etc/nginx/vhost.conf

COPY . /app

WORKDIR /app

RUN composer install

EXPOSE 443 80

