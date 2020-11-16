# Base image
# NOTE: It contains Ruby, Bundler and all required ruby gems
FROM ruby:2.6.5-alpine3.11 AS builder

ENV BUNDLER_VERSION=1.7.3

RUN apk add --no-cache \
        build-base~=0.5 \
 && gem install bundler -v "$BUNDLER_VERSION"

WORKDIR /docs

COPY Gemfile* ./
RUN bundle install \
        --deployment \
        --without development test \
        --jobs "$(grep -c ^processor /proc/cpuinfo)" \
    && bundle binstubs --path ./bin --standalone --force middleman-cli \
    && find vendor/bundle/ -path "*/cache/*" -name "*.gem"   -delete \
    && find vendor/bundle/ -path "*/gems/*"  -name "*.[c|o]" -delete

# NOTE This is gcloud utility set
FROM google/cloud-sdk:281.0.0-alpine AS cloud-sdk

# Runtime image
# NOTE: It contains ready to run code
FROM ruby:2.6.5-alpine3.11 AS runtime

ENV BUNDLER_VERSION=1.7.3
ENV EXECJS_RUNTIME=Node

WORKDIR /docs

RUN apk add --no-cache \
        nodejs~=12.15 \
 && apk add --no-cache --virtual .cloud-sdk-deps \
        python3~=3.8 \
 && gem install bundler -v $BUNDLER_VERSION

COPY lib    ./lib
COPY source ./source
COPY Gemfile* \
     config.rb \
     font-selection.json \
     ./

COPY --from=builder /docs/vendor/bundle ./vendor/bundle
COPY --from=builder /usr/local/bundle/config /usr/local/bundle/config
COPY --from=builder /docs/bin ./bin

# Prepare Google Cloud SDK (gsutil, etc.)
COPY --from=cloud-sdk /google-cloud-sdk /google-cloud-sdk
ENV PATH /google-cloud-sdk/bin:$PATH
