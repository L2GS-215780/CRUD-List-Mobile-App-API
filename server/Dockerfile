FROM node:20-alpine

WORKDIR /app

#Install Dependencies
COPY package*.json ./
RUN npm install --omit=dev

#Copy the rest of the source package
COPY . .

#Server Port Expose
EXPOSE 3000

CMD [ "node", "index.js" ]