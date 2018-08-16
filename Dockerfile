FROM ruby:2.3.6-alpine

RUN apk update && \
    apk upgrade && \
    apk add --update \
        build-base \
        libffi-dev \
        nodejs

WORKDIR /docs

COPY lib ./lib
COPY source ./source
COPY config.rb font-selection.json Gemfile* ./

ENV EXECJS_RUNTIME Node
RUN bundle install --jobs `grep -c ^processor /proc/cpuinfo`
RUN bundle exec middleman build --clean
