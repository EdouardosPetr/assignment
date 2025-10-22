FROM node:18-alpine

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .
RUN echo "Edouardos - Wiz Technical Exercise" > wizexercise.txt

EXPOSE 8080
CMD ["npm", "start"]
