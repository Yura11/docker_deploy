FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    git \
    
    prometheus
    
RUN mkdir -p /usr/local/Server

WORKDIR /usr/local/Server

RUN git clone https://github.com/Yura11/docker_deploy.git .

RUN chmod +x /usr/local/Server/Server/Server.x86_64

COPY prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE 7777 9090

CMD ["bash", "-c", "./Server/Server.x86_64 & prometheus --config.file=/etc/prometheus/prometheus.yml"]



