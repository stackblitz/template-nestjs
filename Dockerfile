FROM gcr.io/stackblitz/template-nestjs-base

WORKDIR /workspace

COPY package.json yarn.lock /workspace/

RUN yarn install

COPY . .

RUN yarn build

CMD ["yarn", "start:prod"]

