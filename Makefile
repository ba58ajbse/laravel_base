init:
    ln -s /var/www/laravel/public /var/www/html/public && chmod 777 -R /var/www/laravel/storage

env:
    php artisan key:generate
