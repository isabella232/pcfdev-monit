FROM ubuntu

RUN apt-get update && \
  apt-get install -y \
    bison \
    build-essential \
    flex

ADD . /monit/

WORKDIR /monit

RUN ./configure --without-ssl --prefix=/var/vcap/bosh && make
