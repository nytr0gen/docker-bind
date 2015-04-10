FROM ubuntu:14.04
MAINTAINER nytr0gen.george@gmail.com

RUN apt-get update; \
  apt-get install -y bind9 openssl; \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/bind; \
  rm /etc/bind/named.conf; \
  ln -s /var/bind/named.conf /etc/bind/named.conf
VOLUME /var/bind

RUN mkdir -p /opt/bind
WORKDIR /opt/bind
COPY run.sh ./run.sh
RUN chmod +x ./run.sh

EXPOSE 53/udp
CMD ./run.sh
