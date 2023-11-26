# Use an Alpine Linux base image with Node.js pre-installed
FROM node:14-alpine

# Copy package.json and package-lock.json to the container root directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container root directory
COPY . .

# Expose port 8080 for the Node.js application
EXPOSE 8080

# Command to start the Node.js application
CMD ["node", "app.js"]
# Use an official Node.js runtime as a parent image
# FROM node:18

# # Set the working directory to /app
# WORKDIR /app

# # Copy the current directory contents into the container at /app
# COPY package*.json /app/

# # Install any needed packages specified in package.json
# RUN npm install

# # Make port 8080 available to the world outside this container
# EXPOSE 8080

# # Define environment variable
# ENV LOGFILE=/log/output.log

# # Run app.js when the container launches
# CMD ["node", "app.js"]