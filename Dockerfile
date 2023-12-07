FROM ruby:3.2.2
ENV LANG ja_JP.UTF-8

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
                 unzip \
                 vim-tiny \
                 --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
