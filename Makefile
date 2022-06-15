init:
	docker-compose exec app composer install
	docker-compose exec app npm install
	docker-compose exec app npm run development
	docker-compose exec app ln -s /var/www/laravel/public /var/www/html/public
	docker-compose exec app chmod 777 -R /var/www/laravel/storage

app_keygen:
	docker-compose exec app php artisan key:generate
