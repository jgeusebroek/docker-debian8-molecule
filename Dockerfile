FROM debian:jessie
MAINTAINER Jeroen Geusebroek <me@jeroengeusebroek.nl>

COPY files/initctl_faker .
RUN cp /bin/true /sbin/agetty && chmod +x initctl_faker && rm -fr /sbin/initctl && ln -s /initctl_faker /sbin/initctl
