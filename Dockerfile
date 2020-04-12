FROM ruby:2.4.4-alpine

MAINTAINER Barry Walker <barrywalker@gmail.com>

RUN apk update && apk upgrade \
    && apk add ruby-nokogiri ruby-dev build-base bash \
        libxml2-dev libxslt-dev libffi-dev mariadb-dev \
        tzdata mariadb-connector-c

WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
RUN bundle install --without=development test

ADD . /app
RUN mkdir ./lib/mariadb && ln -s /usr/lib/mariadb/plugin ./lib/mariadb/plugin

ENTRYPOINT ["/app/entrypoint.sh"]
