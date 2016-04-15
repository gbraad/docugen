FROM ubuntu:trusty
MAINTAINER Gerard Braad <me@gbraad.nl>

RUN apt-get update && \
    apt-get install -y pandoc
