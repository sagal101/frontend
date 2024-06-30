# Use an official Node.js runtime as the base images
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the application is running
EXPOSE 3000

# Command to run the application
CMD ["node", "-e", "console.log('hello world sagal')"]
