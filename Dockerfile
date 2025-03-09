# Use an official Nginx image to serve the static files
FROM nginx:alpine

# Copy the HTML, CSS, and other static files into the Nginx web root
COPY ./ /usr/share/nginx/html

# Expose port 80 to allow access to the web server
EXPOSE 80

# Run Nginx in the foreground (default behavior in the Nginx image)
CMD ["nginx", "-g", "daemon off;"]
