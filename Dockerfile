FROM node:6.11.5-alpine

WORKDIR /opt/app

ADD package.json yarn.lock /tmp/
ADD .yarn-cache.tgz /
RUN cd /tmp && yarn --ignore-engines
RUN mkdir -p /opt/app && cd /opt/app && ln -s /tmp/node_modules