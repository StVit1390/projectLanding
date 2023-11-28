# Use container with pre-installed nodejs
FROM node:18-alpine

# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

# Create dir for node_modules
WORKDIR /opt/app

# Copy files to container
COPY . .

RUN npm install 

EXPOSE 1337

CMD ["npm", "run", "develop"]