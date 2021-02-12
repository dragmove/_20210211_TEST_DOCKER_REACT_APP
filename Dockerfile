FROM node:alpine as builder

LABEL maintainer "dragmove <dragmove@gmail.com>"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "build"]

FROM nginx

COPY --from=builder /usr/src/app/build /usr/share/nginx/html

