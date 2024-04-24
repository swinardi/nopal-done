FROM node:18-alpine
WORKDIR /app

COPY package.json ./

COPY yarn.lock ./

RUN yarn install --frozen-lockfile
RUN yarn upgrade

COPY . .

RUN yarn build

EXPOSE 3000

CMD ["yarn", "run", "start"]
