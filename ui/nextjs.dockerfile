# Use Node.js 14 as base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port that Next.js runs on
EXPOSE 3000

# Define the command to run the Next.js application
CMD ["npm", "start"]
