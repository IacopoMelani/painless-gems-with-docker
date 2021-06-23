FROM ruby:2.6

WORKDIR /app

COPY  Gemfile .
COPY  Gemfile.lock .

RUN apt-get update && \
    apt-get upgrade -yq && \
    gem install bundler:2.2.16

RUN bundle install

EXPOSE 8080

CMD ["ruby", "app.rb"]