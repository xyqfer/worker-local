FROM node:16

WORKDIR /usr/src/app

RUN npm install -g miniflare --registry=https://registry.npmmirror.com

RUN npm install -g pm2 --registry=https://registry.npmmirror.com

COPY index.js ./

COPY index2.js ./

COPY index3.js ./

COPY index4.js ./

COPY index5.js ./

COPY entry.js ./

COPY run.sh ./

RUN chmod a+x /usr/src/app/run.sh

EXPOSE 8787 8989 9090 9191 9292

ENTRYPOINT ["/usr/src/app/run.sh"]