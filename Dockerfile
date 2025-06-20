FROM node:20-slim AS build

WORKDIR /app

COPY package*.json ./
COPY tsconfig.json ./
COPY prisma ./prisma
COPY src ./src

RUN npm install
RUN npm run build

FROM node:20-slim

WORKDIR /app

COPY --from=build /app/dist ./dist
COPY --from=build /app/package*.json ./
COPY --from=build /app/prisma ./prisma

RUN apt-get update -y && apt-get install -y openssl

RUN npm install --omit=dev

RUN npx prisma generate

CMD ["node", "dist/server.js"]


