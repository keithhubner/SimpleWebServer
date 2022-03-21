# Simple Web Application Example

## Intro

The purpose of this project is to give an example of how to write and deploy a simple nodeJS web application. The application takes a web request on a specific URL and responds with a JSON object. The application is built using Docker and hosted using miniKube. 

## Requirements

In order to run the build and deploy script you should have the following installed on your local machine:

- Docker 
- Minkube 
- Kubectl 

> Setting up these programs the the local environment are beyond the scope of this document


## Getting Started 

First clone the repo, then run the build script:

```
sh build-and-deploy.sh
```

You should see the image being created locally and then be deployed into minikube.

> Make sure you update your local host file with the correct IP, this should be given to you from the script.

You can access the site using and you should receive a JSON response:

http://local.ecosia.org/tree


