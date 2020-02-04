FROM ubuntu:latest
SHELL ["/bin/bash", "-c"]
MAINTAINER Eduardo Sandoval <esandov4@jhu.edu>

RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install --fix-missing \
  && apt-get -y install \
        python3 \
        python3-pip \
        libpq-dev \
        git \
  && pip3 install \
           git+https://github.com/NYUCCL/psiTurk.git@master \
           PyMySQL \
    || pip3 install --upgrade \
           mysql-python \
  && pip3 install --upgrade \
           psycopg2 \
  && apt-get clean autoclean \
  && apt-get autoremove -y
VOLUME /psiturk
WORKDIR /psiturk
ENV PSITURK_GLOBAL_CONFIG_LOCATION=/psiturk/
EXPOSE 22362
