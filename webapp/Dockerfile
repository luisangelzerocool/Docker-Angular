# base image
FROM node:12.7.0

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install
RUN npm install -g @angular/cli@7.3.9
RUN npm install rxjs-compat --save
RUN npm install @angular/http@latest
RUN npm install @angular/platform-browser --save

# add app
COPY . /app

# start app
CMD ng serve --host 0.0.0.0 --port 4000 --public-host http://localhost --disableHostCheck --configuration=production