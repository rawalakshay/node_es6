# Use official Node.js image as the base image
FROM node:18.18.0

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (to cache npm install)
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app will run on (for example, 3000)
EXPOSE 3000

# Command to run the app
CMD ["node", "server.mjs"]