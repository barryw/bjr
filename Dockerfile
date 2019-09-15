FROM ruby:2.6.4-alpine

MAINTAINER Barry Walker <barrywalker@gmail.com>

RUN apk update && apk upgrade \
    && apk add ruby-nokogiri ruby-dev build-base bash \
        libxml2-dev libxslt-dev libffi-dev mariadb-dev \
        tzdata

WORKDIR /app
ADD Gemfile /app
ADD Gemfile.lock /app
RUN bundle install --without=development --without=test

ADD . /app

CMD ["bundle exec rails s"]
