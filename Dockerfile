FROM node:16-alpine3.16
RUN apk add py3-pip
RUN apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
RUN pip install --upgrade pip
RUN pip install azure-cli

COPY server.js .

## Runtime ##
ENTRYPOINT ["node","server.js"]
