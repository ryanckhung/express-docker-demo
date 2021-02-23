To run the demo

1. install the npm package

### `npm install`

2. build the docker image base on the Dockerfile

### `docker build -t ryanckhung/express .`

3. run the docker image (-p external:internal)

### `docker run --name express_server -d -p 8081:8080 ryanckhung/express`

4. goto the browser / termainal and run the container

### `http://localhost:8081`

### `curl localhost:8081`

5. checking the running container

### `docker container ls`

6. log into the contrainer

### `docker exec -it express_server bash`

7. to stop the container

### `docker stop web_server`

### `docker rm web_server`

8. in the linux machine, run the "node-setup.sh" shell script

9. after you build the image, you can import and export the docker image

### `docker save <my_local_image> > xxx.tar`
### `docker load --input xxx.tar`

10. show the docker status
### `docker info`

11. The exec command will allow us to run a command in a running container.  
the following command run the "touch /tmp/test" command inside the running container
### `docker exec -d flask-tutorial touch /tmp/test`

12. running command in the executing container
### `docker exec -it <container name> <command to run>`
### `docker exec -it price-api touch /contains_your_price_data/from_price_api.txt`
### `docker exec -it price-api ls /contains_your_price_data`

 
