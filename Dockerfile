FROM node:22-alpine as builder

RUN apk add --no-cache git

RUN mkdir /nuxt
WORKDIR /nuxt

COPY package*.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .
RUN yarn build

FROM node:22-alpine as runner

RUN mkdir /nuxt-app
WORKDIR /nuxt-app

COPY --from=builder /nuxt/.output /nuxt-app


ENTRYPOINT [ "node", "server/index.mjs" ]
