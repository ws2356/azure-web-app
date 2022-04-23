FROM node:17.6.0-alpine

WORKDIR /app/

COPY package.json package-lock.json ./

RUN npm ci

COPY src src/

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["src/index.js"]
