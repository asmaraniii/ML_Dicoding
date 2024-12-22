FROM node:16


# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies

RUN npm install

# Copy app source code
COPY . .

# Expose port and start application (Change the existing port from 3000 to 8080 for deployment purposes)
EXPOSE 8080

CMD ["npm", "start"]
