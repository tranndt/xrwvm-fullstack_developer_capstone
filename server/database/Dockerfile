FROM node:18.12.1-bullseye-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json ./
RUN npm install

# Copy application files
COPY app.js review.js dealership.js ./
COPY data/dealerships.json data/reviews.json ./

# Expose the port the app runs on
EXPOSE 3030

# Command to run the application
CMD ["node", "app.js"]
