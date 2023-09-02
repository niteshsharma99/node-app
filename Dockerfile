# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY src/backend/package*.json ./

# Install the dependencies
RUN npm install

# Copy the application source code to the container
COPY src/backend .

# Expose port 8080
EXPOSE 8080

# Start the application
CMD [ "node", "index.js" ]
