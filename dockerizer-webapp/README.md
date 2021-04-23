# Docker-Angular for WebApp
Application web developed in angular and deployed in docker

**Version**

 * Angular CLI: 9.0.7
 * Node: 12.16.1
 * OS: 10-Alpine (Container)

## Image Dockerization

Create the Dockerfile inside Angular WebApp

```bash
cd webapp
nano Dockerfile
``` 
Enter to machine with Docker 

```bash
ssh <user@ip_host> -p <port> -L <portExpose:ip_host:portExpose>
```

Clone or pull the repo and download the Dockerfile change

´git pull´ or  ´git clone´

go to route of repo and route of webapp with Dockerfile

```bash
cd /repo/webapp/
```

Build the docker image for WebApp

```bash
docker build . -t <image_name>
```
>Execute this command in a route with Dockerfile 

Execute the created image 

```bash
docker run -d --name <container_name> -p <portExpose:portApp>  <image_name>
```

To verificate the WebApp running in the browser

go to browser and copy ´ip_host:portExpose´


## Publish Image in DockerHub

Enter to machine with Docker 

```bash
ssh <user@ip_host> -p <port>
```

Login in dockerhub 

```bash
docker login
```

Prepare image 

```bash
docker tag <image_name> <dockerHubUser/image_name>
```

Publish image in Docker Hub

```bash
docker push <dockerHubUser/image_name>
```

To verificate the image publish in Docker Hub

go to Docker Hub => https://hub.docker.com/


# Execution for Webapp

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 9.0.7.

### Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

### Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

### Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

### Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

### Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).

