FROM alpine:3.8
MAINTAINER Mambix Ltd. <ledi.mambix@gmail.com>

RUN apt-get update && \
  apt-get install -y software-properties-common

COPY ./run.sh /
RUN chmod +x /run.sh

EXPOSE 8545 30303

ENTRYPOINT [ "/run.sh" ]
