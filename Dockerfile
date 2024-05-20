FROM node:alpine

ARG VERSION
ENV APP_VER=production.${VERSION:-v1.0}

WORKDIR /var/node

COPY src/ ./

RUN npm install \
    json-schema@^0.4.0 \
    lodash@^4.17.21 \
    ejs@^3.1.7 \
    morgan@^1.9.1 \
    express@^4.15.5 \
    pug@^3.0.2 \
    pug-code-gen@^3.0.2 \
    qs@^6.5.3 && \
    npm install

EXPOSE 3000

CMD ["./bin/www"]