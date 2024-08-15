# Use the official Node.js image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the project
RUN npm run build

# Expose port (if needed for local development)
EXPOSE 3000

# Command to run the app (can be omitted for extensions)
CMD ["npm", "start"]
