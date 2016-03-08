FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /stevedocs_api_v1
WORKDIR /stevedocs_api_v1
ADD Gemfile /stevedocs_api_v1/Gemfile
ADD Gemfile.lock /stevedocs_api_v1/Gemfile.lock
RUN bundle install
ADD . /stevedocs_api_v1