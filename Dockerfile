# DEMO ONLY — intentionally vulnerable base image
FROM node:16-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY src ./src

CMD ["node", "-e", "console.log('ci-demo running')"]