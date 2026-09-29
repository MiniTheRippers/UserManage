#!/bin/bash
set -euo pipefail

cd /var/www/html

if [ ! -f .env ]; then
    cp .env.example .env
fi

composer install --no-interaction --prefer-dist --optimize-autoloader

if ! grep -qE '^APP_KEY=base64:.+' .env; then
    php artisan key:generate --no-interaction --ansi
fi

php artisan storage:link --force --no-interaction --ansi || true
php artisan migrate --force --graceful --ansi

mkdir -p storage/framework/{cache,sessions,views} storage/logs bootstrap/cache
chown -R www-data:www-data storage bootstrap/cache || true

exec "$@"
