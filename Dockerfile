FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y lcov

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]