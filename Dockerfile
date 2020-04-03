# Specify base image
FROM node:alpine

WORKDIR /usr/app
# Install some base dependencies
# Run npm install only if there is a change in package.json
COPY ./package.json ./
RUN npm install
# Copy all files from the project dir to current dir
COPY ./ ./

# Default Command
CMD ["npm", "start"]