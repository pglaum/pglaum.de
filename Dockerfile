FROM node:22-alpine as builder

RUN apk add --no-cache git

RUN mkdir /nuxt
WORKDIR /nuxt

COPY package*.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .
RUN yarn build

ENTRYPOINT [ "node", ".output/server/index.mjs" ]

#RUN yarn generate
#
#FROM caddy:alpine
#
#COPY .docker/Caddyfile /etc/caddy/Caddyfile
#COPY --from=builder /nuxt/.output/public /nuxt
