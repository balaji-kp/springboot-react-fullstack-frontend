# Use the official Node.js runtime as the base image
FROM node:18 as build

RUN git clone https://github.com/balaji-kp/springboot-react-fullstack-frontend.git
# Set the working directory in the container
WORKDIR /springboot-react-fullstack-frontend

# Copy package.json and package-lock.json to the working directory

# Install dependencies
RUN npm install



# Build the React app for production
RUN npm run build

# Use Nginx as the production server
FROM nginx:alpine

# Copy the built React app to Nginx's web server directory
COPY --from=build /springboot-react-fullstack-frontend/build /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
