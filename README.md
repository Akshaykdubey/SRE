# SRE
Simple application exposing an endpoint that takes a HEX color and returns its RGB representation. Using Python3.7 to write the code.

Steps:

1) To run the application in Containerised environment. Using Docker to run it.

REQUIREMENTS:

## Install Docker
sudo apt-get install docker.io

To test use some of the commands like: 
docker info
ansible|akshaydube-ltm1:k8s_python_sample_code akshay.dubey$ docker info
Client:
 Debug Mode: false

Server:
 Containers: 18
  Running: 0
  Paused: 0
  Stopped: 18
 Images: 36

## Creating Python container image
We will use Docker to create the image. Docker is able to automatically build images using instructions from a Docker file.
It is attached in therepository.

## Build Docker Image
We can now build the Docker image from the instructions using this command:
docker build -t SRE .

## Check the Docker Image
docker images 

## Running in Docker
docker run SRE

