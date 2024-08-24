# Use the official Node.js 18 image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the working directory
COPY . .
RUN npm run build
# Expose the port the app runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "run", "start"]
