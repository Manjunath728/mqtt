# Use the official Node.js v12 image as the base image
FROM node:12

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install project dependencies

RUN npm install


# Copy the rest of the application code to the container
COPY . .

# Expose port 1883 for MQTT
EXPOSE 1883

# Start the application when the container runs
CMD ["node", "index.js"]
