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
    yarn install && \
    apt-get remove -y build-essential && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 1337

CMD ["yarn", "run", "develop"]
