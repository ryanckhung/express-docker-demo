To run the demo

1. install the npm package

### `npm install`

2. build the docker image base on the Dockerfile

### `docker build -t ryanckhung/express .`

3. run the docker image (-p external:internal)

### `docker run --name express_server -d -p 8081:8080 ryanckhung/express`

4. goto the browser and run the container

### `http://localhost:8081`

5. checking the running container

### `docker container ls`

6. log into the contrainer

### `docker exec -it express_server bash`

7. to stop the container

### `docker stop web_server`

### `docker rm web_server`

8. in the linux machine, run the "node-setup.sh" shell script
