#!/bin/bash

## clone current repository and then run unit tests. fail push if tests fail

git clone . ../testing-repository
cp .env.testing ../testing-repository/.env.testing
cd ../testing-repository
composer install
yarn install
php artisan key:generate --env=testing
php artisan test
status=$?
cd ../
rm -rf testing-repository
[ $status -eq 0 ] && exit 0 || exit 1