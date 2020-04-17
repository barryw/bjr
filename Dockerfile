FROM ruby:2.6.6-alpine

MAINTAINER Barry Walker <barrywalker@gmail.com>

RUN apk update && apk upgrade \
    && apk --no-cache add ruby-nokogiri ruby-dev build-base bash \
        libxml2-dev libxslt-dev libffi-dev mariadb-dev \
        tzdata mariadb-connector-c curl wget jq ca-certificates

WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
RUN gem install bundler \
    && bundle install --without=development test

ADD . /app
RUN mkdir ./lib/mariadb && ln -s /usr/lib/mariadb/plugin ./lib/mariadb/plugin

ENTRYPOINT ["/app/entrypoint.sh"]
