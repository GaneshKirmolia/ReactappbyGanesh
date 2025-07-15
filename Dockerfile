# FROM node:alpine:3.21

# WORKDIR /myapp

# COPY . .

# RUN npm install

# EXPOSE 3000

# CMD ["npm", "start"]


# Step 1: Base image with Node
FROM node:24-alpine3.21

# Step 2: Set working directory
WORKDIR /myapp

# Step 3: Copy only package.json and lock file first
COPY package*.json ./

# Step 4: Install dependencies (cached if deps don't change)
RUN npm install

# Step 5: Copy the rest of the app
COPY . .

# Step 6: Expose React dev server port
EXPOSE 3000

# Step 7: Start app
CMD ["npm", "start"]
