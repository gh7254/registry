FROM node:24-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN apk add --no-cache --virtual .build-deps \
    python3 \
    make \
    g++ \
    && npm ci --omit=dev \
    && apk del .build-deps

COPY . .

RUN mkdir -p /etc/todos

EXPOSE 3000

CMD ["node", "src/index.js"]