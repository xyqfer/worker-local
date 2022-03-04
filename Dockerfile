FROM node:16

WORKDIR /usr/src/app

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

COPY index.js ./

COPY index2.js ./

EXPOSE 8787 8989

CMD [ "miniflare", "index.js" ]

# CMD [ "miniflare", "index2.js", "-p", "8989" ]