FROM viljaste/base:latest

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm
ENV DEBIAN_FRONTEND noninteractive

ADD ./src /src

RUN apt-get update && /src/build.sh && /src/clean.sh

EXPOSE 80

CMD ["/src/run.sh"]
