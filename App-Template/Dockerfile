FROM ruby:2.7.1-alpine AS builder

LABEL maintainer="Mike Rogers <me@mikerogers.io>"

RUN apk add --no-cache --virtual \
    #
    # required
    nodejs-dev yarn bash \
    tzdata build-base libffi-dev \
    # Nice to haves
    git \
    #
    # Fixes watch file isses with things like HMR
    libnotify-dev

FROM builder as development

# Add the current apps files into docker image
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/bin:$PATH

# Set ruby version
COPY .ruby-version /usr/src/app

# Install latest bundler
RUN bundle config --global silence_root_warning 1

EXPOSE 4000
CMD ["yarn", "start", "--host", "0.0.0.0"]

FROM development AS production

# Install Ruby Gems
COPY Gemfile /usr/src/app
COPY Gemfile.lock /usr/src/app
RUN bundle check || bundle install --jobs=$(nproc)

# Install Yarn Libraries
COPY package.json /usr/src/app
COPY yarn.lock /usr/src/app
RUN yarn install --check-files

# Copy the rest of the app
COPY . /usr/src/app

# Compile the assets
RUN RACK_ENV=production NODE_ENV=production yarn build
