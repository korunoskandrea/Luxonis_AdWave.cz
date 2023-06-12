FROM node:16

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY ./prisma prisma
COPY ./src src
COPY . .

RUN npm i -g prisma
RUN prisma generate

EXPOSE 8081

CMD ["npm", "start"]
