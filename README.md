# SRE
Simple application exposing an endpoint that takes a HEX color and returns its RGB representation. Using Python3.7 to write the code.

Steps:

# 1) To run the application in Containerised environment. Using Docker to run it.

REQUIREMENTS:

## Install Docker
sudo apt-get install docker.io

To test use some of the commands like: 
#docker info
ansible|akshaydube-ltm1:k8s_python_sample_code akshay.dubey$ docker info
Client:
 Debug Mode: false

Server:
 Containers: 18
  Running: 0
  Paused: 0
  Stopped: 18
 Images: 36

## 2) Creating Python container image
We will use Docker to create the image. Docker is able to automatically build images using instructions from a Docker file.
It is attached in the repository.

## 3) Build Docker Image
We can now build the Docker image from the instructions using this command:
docker build -t sre .

## 4) Check the Docker Image
# docker images 
ansible|akshaydube-ltm1:sre akshay.dubey$ docker images
REPOSITORY               TAG                 IMAGE ID            CREATED             SIZE
sre                      latest              d22ff3f8fe6a        10 seconds ago      923MB

## 5) Running in Docker - using -ti option for interactive mode.
ansible|akshaydube-ltm1:sre akshay.dubey$ docker run -ti sre
Enter hex value: #FFFFFF
RGB = (255, 255, 255)

ansible|akshaydube-ltm1:sre akshay.dubey$ docker run -ti sre
Enter hex value: #C0C0C0
RGB = (192, 192, 192)

