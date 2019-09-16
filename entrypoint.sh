#!/bin/bash
set -e

until nc -z -v -w30 $BJR_DATABASE_HOST 3306; do
 echo 'Waiting for MySQL...'
 sleep 1
done
echo "MySQL is up and running!"

if [[ $SERVER_TYPE == "api" ]];
then
  echo Starting BJR API server
  rake db:create db:migrate
  rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'
else
  echo Starting BJR worker
  bundle exec sidekiq
fi
