# base image
FROM node:11.15.0

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN yarn install
RUN yarn global add react-scripts
COPY . .
# start app
CMD ["npm", "start"]