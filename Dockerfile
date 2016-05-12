FROM debian:8.4
MAINTAINER Jim Riordan <jim@j1mr10rd4n.info>

ADD . /build

RUN /build/prepare.sh
ENV LANG en_US.UTF8

# Add s6 overlay (https://github.com/just-containers/s6-overlay)
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz /tmp/s6-overlay.tar.gz
RUN tar xvfz /tmp/s6-overlay.tar.gz -C /

RUN /build/cleanup.sh

ENTRYPOINT ["/init"]

