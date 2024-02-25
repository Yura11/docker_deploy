FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    git

RUN mkdir /usr/local/Server

RUN git clone https://github.com/Yura11/docker_deploy.git /usr/local/Server

RUN chmod +x /usr/local/Server/Server/Server.x86_64

WORKDIR /usr/local/Server/Server

CMD ["./Server.x86_64"]


