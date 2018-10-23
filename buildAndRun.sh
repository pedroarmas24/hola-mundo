#!/bin/sh
mvn clean package && docker build -t com.mycompany/hola-mundo .
docker rm -f hola-mundo || true && docker run -d -p 8080:8080 -p 4848:4848 --name hola-mundo com.mycompany/hola-mundo 
