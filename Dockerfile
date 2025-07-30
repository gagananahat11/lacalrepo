# Dockerfile
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json (add one if you use npm init)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of the files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
