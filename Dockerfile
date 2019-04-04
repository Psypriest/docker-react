FROM node:alpine as builder
WORKDIR '/app'
COPY pakcage.json .
RUN npm install
COPY . . 
RUN npm run build

FROM nginx
COPY --from=builder

