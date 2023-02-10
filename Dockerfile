FROM node:18.13.0

#set working directory
WORKDIR /

ENV PATH /node_modules/.bin:$PATH

# add app
COPY ./ ./

RUN npm install

#start app
CMD ["npm", "start"]