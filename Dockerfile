FROM alpine:3.8
MAINTAINER Mambix Ltd. <ledi.mambix@gmail.com>

RUN apk update && \
  apk add git \
  build-essential \
  cmake \ 
  pkg-config \
  libboost-all-dev \ 
  libssl-dev \
  autoconf \
  automake \ 
  check \
  libpcre3-dev \
  rapidjson-dev \ 
  libreadline-dev

COPY ./build.sh /
RUN chmod +x /build.sh
CMD /build.sh

COPY ./run.sh /
RUN chmod +x /run.sh

EXPOSE 8545 30303

ENTRYPOINT [ "/run.sh" ]
