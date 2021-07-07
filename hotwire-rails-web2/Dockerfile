FROM ruby:3.0.0

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       bison libyaml-dev \
                       libgdbm-dev \
                       libreadline-dev \
                       libncurses5-dev \
                       libffi-dev \
                       zlib1g-dev \
                       libssl-dev \
                       nodejs \
                       npm

RUN npm uninstall yarn -g && \
    npm install yarn -g -y

RUN gem install bundler && \
    apt update && \
    apt -y install git libicu-dev libidn11-dev \
    libpq-dev libprotobuf-dev protobuf-compiler

ENV APP_ROOT /app2
RUN mkdir $APP_ROOT

COPY ./hotwire-rails-web2/Gemfile $APP_ROOT
COPY ./hotwire-rails-web2/Gemfile.lock $APP_ROOT

RUN cd $APP_ROOT && \
  bundle install

COPY ./hotwire-rails-web2 /app2

WORKDIR $APP_ROOT
EXPOSE 3001
ENV BIND="0.0.0.0"
