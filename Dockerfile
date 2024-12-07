FROM node:18-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json .npmrc ./

RUN npm install

COPY . .

EXPOSE 3000

ENV NODE_ENV=development

CMD ["npm", "run", "dev"]
