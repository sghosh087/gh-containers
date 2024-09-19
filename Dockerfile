FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL=mongodb+srv
ENV MONGODB_DB_NAME=gha-demo1
ENV MONGODB_CLUSTER_ADDRESS=cluster0.qnehs.mongodb.net
ENV MONGODB_USERNAME=gh-demo-user
ENV MONGODB_PASSWORD=h2sAUmn1ogZz48hm

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]