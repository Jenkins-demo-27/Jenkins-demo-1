# Use the official NGINX base image
FROM nginx:latest

# Maintainer information
LABEL maintainer="your-email@example.com"

# Install additional software
RUN apt-get update && \
    apt-get install -y curl vim && \
    rm -rf /var/lib/apt/lists/*

# Copy a custom NGINX configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files to the appropriate directory
COPY html/ /usr/share/nginx/html/

# Expose the default NGINX port
EXPOSE 80

# Set the entry point to start NGINX
CMD ["nginx", "-g", "daemon off;"]
