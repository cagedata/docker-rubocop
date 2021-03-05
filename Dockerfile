FROM ruby:3.0
MAINTAINER "Dave Long <dlong@cagedata.com>"

ARG version=1.11.0

RUN gem install rubocop -v ${version}

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

