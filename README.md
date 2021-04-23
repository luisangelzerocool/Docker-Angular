# Docker

## Commands 

**Images:**
* List images: `docker images`  
* Delete image: `docker rmi <image_name>` 
* Delete all images: `docker rmi $(docker images -q)` 

**Containers:**
* List containers: `docker ps -a`
* Delete container: `docker rm <container_name>` 
* Delete all containers: `docker rm $(docker ps -a -q)`
* Kill process containers: `docker kill <container_name>` 
* Stop container: `docker stop <container_name>`
* Enter to container: `docker exec -ti <container_name> bash` 
* See container configuration: `docker inspect <container_name>`
* See container logs: `Docker logs -f <container_name>` 


## Dockerizer into image, one Web App

1. Create the web app
2. Create the `Dockerfile`
3. Create the `.dockerignore`
4. Enter to machine with docker 
     ```bash
     #simple entering
     $ ssh <user@ip_host> -p <port>
     # entering to machine with port-forwarding for expose an port:
     $ ssh <user@ip_host> -p <port> -L <portExpose:ip_host:portExpose>
     ```
5. Copy the web app into machine with docker
6. create docker build with 
     ```bash 
     $ docker build . -t <user/image_name:tag>
     ```
7. Execute the image and create container
     ```bash 
     $ docker run -d --name <container_name> -p <portExpose:portApp> <image_name>
     ```
8. open the app in your browser with: `http://<ip_host:portExpose>`


## Publish Image in DockerHub

1. Enter to machine with Docker 
     ```bash
     #simple entering
     $ ssh <user@ip_host> -p <port>
     # entering to machine with port-forwarding for expose an port:
     $ ssh <user@ip_host> -p <port> -L <portExpose:ip_host:portExpose>
     ```
2. Login in dockerhub 
     ```bash
     $ docker login
     ```
3. Prepare image 
     ```bash
     $ docker tag <image_name> <dockerhub_user/image_name:tag>
     ```
4. Publish image in Docker Hub
     ```bash
     $ docker push <dockerhub_user/image_name:tag>
     ```
To verificate the image publish in Docker Hub
> go to Docker Hub => https://hub.docker.com/


## Download Image from DockerHub

1. Enter to machine with Docker 
     ```bash
     #simple entering
     $ ssh <user@ip_host> -p <port>
     # entering to machine with port-forwarding for expose an port:
     $ ssh <user@ip_host> -p <port> -L <portExpose:ip_host:portExpose>
2. Download Image
     ```bash
     $ docker pull <dockerhub_user/image_name:tag>
     ```