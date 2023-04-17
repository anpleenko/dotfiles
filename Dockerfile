FROM ubuntu:22.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y sudo wget curl

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow
RUN apt-get install -y tzdata

WORKDIR /tmp/dotfiles
COPY . /tmp/dotfiles
RUN ./install_server.sh
