FROM ubuntu:22.04

RUN apt-get update \
	&& apt-get install -yqq openconnect \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT /usr/sbin/openconnect
