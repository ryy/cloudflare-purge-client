FROM ruby:3.0.3

RUN apt-get update -qq

RUN mkdir /app

WORKDIR /app

COPY . /app

# RUN bundle install