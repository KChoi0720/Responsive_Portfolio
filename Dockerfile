# Use the official Node.js image as a base
FROM node:18

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose the port your application will run on
EXPOSE 3000

# Define the command to run your app
CMD ["npm", "start"]
