FROM node:8-onbuild
ENV PORT 8080
EXPOSE 8080

# Create app directory
WORKDIR /app
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

CMD ["npm", "start"]
