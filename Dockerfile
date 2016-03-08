FROM ubuntu

RUN apt-get update && \
  apt-get install -y \
    bison \
    build-essential \
    flex \
    libssl-dev

ADD . /monit/

WORKDIR /monit

RUN ./configure --with-ssl=/usr/lib/x86_64-linux-gnu/openssl-1.0.0 && make
