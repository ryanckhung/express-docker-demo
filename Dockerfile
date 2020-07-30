# version must be specify
# otherwise the lastest node version will be installed
# this may not be support for your which use older version
FROM node:12

# Sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]