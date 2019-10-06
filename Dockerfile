FROM ruby:2.6.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev sqlite3 nodejs
RUN mkdir /tarea7
WORKDIR /tarea7
COPY Gemfile /tarea7/Gemfile
COPY Gemfile.lock /tarea7/Gemfile.lock
RUN bundle install
COPY . /tarea7
