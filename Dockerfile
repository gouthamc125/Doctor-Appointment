# frontend/Dockerfile
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN yarn install
RUN npx update-browserslist-db@latest
EXPOSE 3000
CMD [ "yarn", "start" ]
