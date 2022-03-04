FROM node:16

WORKDIR /usr/src/app

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

RUN npm install -g pm2 --registry=https://registry.npmmirror.com

COPY index.js ./

COPY index2.js ./

COPY run.sh ./

RUN chmod a+x ./run.sh

EXPOSE 8787 8989

ENTRYPOINT  ["/usr/src/app/run.sh"]