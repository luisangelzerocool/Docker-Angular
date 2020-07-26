# base image 
FROM myartifactory.com/node:10-alpine

# set working directory
WORKDIR /app

LABEL   net.dcaballero.maintainer="lvanegas@nargoth.com"
LABEL   net.dcaballero.description="Image with web app developed in angular"
LABEL   net.dcaballero.vendor=dcaballero.net
LABEL   net.dcaballero.copyright=dcaballero.net
LABEL   net.dcaballero.version=1.0.0
LABEL   net.dcaballero.project=acme


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

# expose the port in the container
EXPOSE 4000

# start app
CMD ng serve --host 0.0.0.0 --port 4000 --public-host http://localhost --disableHostCheck --configuration=production