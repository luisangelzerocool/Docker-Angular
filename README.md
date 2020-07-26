# Docker-Angular
Application web developed in angular and deployed in docker

**Version**

 * Angular CLI: 9.0.7
 * Node: 12.16.1
 * OS: 10-Alpine (Container)

## Dockerization

Create the Dockerfile inside Angular WebApp

```bash
cd webapp
nano Dockerfile
``` 
Enter to machine with Docker 

```bash
ssh <user@ip_host> <port> -L <portExpose:ip_host:portExpose>
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


## Publish in DockerHub

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

## LICENSE

MIT License

Copyright (c) 2020 Luis Angel Vanegas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
