FROM ubuntu:20.04
MAINTAINER victor.ustynov@gmail.com
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt install -y \
  curl \ 
  dirmngr \ 
  apt-transport-https \ 
  lsb-release \
  ca-certificates \
  wget \
  zip \
  unzip 
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y \
  nodejs \
  vim \ 
  gcc \
  g++ \
  git \
  make
RUN npm install --location=global npm@8.17.0
RUN npm install --location=global express
RUN npm install --location=global @nestjs/cli
RUN npx @nestjs/cli g controller pages

# download and install nats-server-v2.8.4 from GitHub
RUN cd /tmp; wget -c https://github.com/nats-io/nats-server/releases/download/v2.8.4/nats-server-v2.8.4-linux-amd64.zip; unzip nats-server-v2.8.4-linux-amd64.zip; mv nats-server-v2.8.4-linux-amd64/nats-server /usr/local/bin/; rm -rf /tmp/nats-server*
RUN cd /tmp; wget -c https://github.com/nats-io/natscli/releases/download/v0.0.33/nats-0.0.33-linux-amd64.zip; unzip nats-0.0.33-linux-amd64.zip; mv nats-0.0.33-linux-amd64/nats /usr/local/bin/; rm -rf /tmp/nats*
ENV PATH=$PATH:/usr/local/bin
CMD /usr/local/bin/nats-server >/dev/null 2>&1 &

