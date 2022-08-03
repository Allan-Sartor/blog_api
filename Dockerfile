FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /blog_api

WORKDIR /blog_api

COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

RUN gem install bundler

RUN bundle install

COPY . /blog_api
