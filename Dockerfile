FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash

RUN mkdir /usr/local/Server


COPY Server /usr/local/Server/


RUN chmod +x /usr/local/Server/Server.x86_64


WORKDIR /usr/local/Server


CMD ["./Server.x86_64"]

