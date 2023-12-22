FROM ruby:3.2.2-slim
LABEL maintainer="Slowhand0309"

ARG username=vscode
ARG useruid=1001
ARG usergid=${useruid}

ENV LANG ja_JP.UTF-8

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
                 git \
                 sudo \
                 gcc \
                 make \
                 g++ \
                 build-essential \
                 vim-tiny \
                 --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --gid ${usergid} ${username} \
    && useradd -s /bin/bash --uid ${useruid} --gid ${usergid} -m ${username} \
    && echo ${username} ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/${username} \
    && chmod 0440 /etc/sudoers.d/${username}

USER ${username}