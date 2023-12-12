# Use container with pre-installed nodejs
FROM node:18-alpine

# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git

# Create dir for node_modules
WORKDIR /opt/app

# Copy package configs
COPY package*.json ./

RUN npm config set fetch-retry-maxtimeout 600000 -g && npm install

COPY . .

# Run npm build
RUN npm run build

EXPOSE 3001
CMD ["npm", "run", "start"]
