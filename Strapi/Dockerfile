# # Use container with pre-installed nodejs
# FROM node:18

# # Set default dir
# WORKDIR /opt/app

# # Copy all files 
# COPY . .

# # Install required packages
# RUN apt-get update && \
#     apt-get install -y \
#       build-essential \
#       zlib1g-dev \
#       libpng-dev \
#       nasm \
#       git \
#       libvips-dev && \
#     yarn global add node-gyp && \
#     yarn install && \
#     apt-get remove -y build-essential && \
#     apt-get autoremove -y && \
#     rm -rf /var/lib/apt/lists/*
    
# EXPOSE 1340

# CMD ["yarn", "run", "develop"]

#= V2 ====================================#
# FROM node:18-alpine
# # Installing libvips-dev for sharp Compatibility
# RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git openssh-client

# ARG NODE_ENV=development
# ENV NODE_ENV=${NODE_ENV}

# WORKDIR /opt/
# COPY package.json yarn.lock ./
# # RUN yarn global add node-gyp
# RUN yarn config set network-timeout 600000 -g && yarn install
# ENV PATH /opt/node_modules/.bin:$PATH

# WORKDIR /opt/app
# COPY . .
# RUN chown -R node:node /opt/app
# USER node
# RUN ["yarn", "init"]
# RUN ["yarn", "build"]
# EXPOSE 1340
# CMD ["yarn", "develop"]

#= V3 ====================================#
# Use container with pre-installed nodejs
FROM node:18

# Set default dir
WORKDIR /opt/app

# Copy all files 
COPY . .

# Install required packages
RUN apt-get update && \
    apt-get install -y \
      build-essential \
      zlib1g-dev \
      libpng-dev \
      nasm \
      git \
      libvips-dev && \
    yarn global add node-gyp && \
    yarn install && \
    apt-get remove -y build-essential && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*
    
RUN chown -R node:node /opt/app
USER node

EXPOSE 1337

RUN ["yarn"]
RUN ["yarn", "build"]
CMD ["yarn", "run", "develop"]
