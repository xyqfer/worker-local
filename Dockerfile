FROM node:16

WORKDIR /usr/src/app

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

RUN npm install -g pm2 --registry=https://registry.npmmirror.com

COPY index.js ./

COPY index2.js ./

EXPOSE 8787 8989

CMD pm2 start "miniflare index.js"

CMD pm2 start "miniflare index2.js -p 8989"