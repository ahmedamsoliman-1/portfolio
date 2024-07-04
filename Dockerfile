# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Build the app
RUN npm run build

# Use a lightweight web server to serve the app
FROM nginx:alpine

# Copy the built files to the nginx html directory
COPY --from=0 /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
