FROM node:18.13.0

#set working directory
WORKDIR /code

ENV PATH /node_modules/.bin:$PATH

# add app
COPY ./ ./

RUN npm install --legacy-peer-deps
RUN npm install nodemon --save-dev --legacy-peer-deps

#start app
CMD ["npm", "start"]