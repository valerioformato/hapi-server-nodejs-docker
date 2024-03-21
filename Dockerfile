FROM node:latest

COPY server-nodejs /app

WORKDIR /app

RUN rm -rf .git .gitignore

RUN npm install && npm update

CMD ["node", "server.js"]
