FROM node

WORKDIR /usr/src/app

COPY package.json .

# npm ERR! code SELF_SIGNED_CERT_IN_CHAIN
RUN export  NODE_TLS_REJECT_UNAUTHORIZED='0'
RUN npm config set strict-ssl=false

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]