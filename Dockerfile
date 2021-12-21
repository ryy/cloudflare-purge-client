FROM ruby:2.6.0

RUN apt-get update -qq

RUN mkdir /app

WORKDIR /app

COPY . /app

# RUN bundle install