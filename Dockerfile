# Use official Node runtime as parent image
FROM node:12.7.0-alpine

# Set working directory to /app
WORKDIR '/app'

# Copy package.json to working directory to house dependencies
COPY package.json .

# Install any needed packages specified in package.json
RUN yarn

# Copying the rest of the course code to the working directory
COPY . .

# Make port 3000 in the container available to the world outside the container
EXPOSE 3000

# Run index.js when the container launches
CMD ["node", "index.js"]