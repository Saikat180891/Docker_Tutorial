docker version // to check the version

docker run <image_name> // to run image

//override default command
docker run <image_name> command
ex: docker run busybox echo hi there
ex: docker run busybox ls

docker ps // check all running containers

docker ps --all // shows all containers that are ever created

docker run = docker create + docker start

docker create <image>
docker start -a <container_id>
-a will print in the terminal

// delete all containers
docker system prune

// get logs
docker logs <container_id>

//stopping a container
docker stop <container_id> // issues SIGTERM
docker kill <container_id> // issues SIGKILL

docker exec -it <container_id> <command> // -it without this command this will exit immediately
// -i + -t === -it
docker exec -it <container_id> sh // to open command terminal inside a container, to exit ctrl + D
2 docker container with same name wont share files automatically

=================================================================================================

TO create own image

docker build . // inside the root directory where Dockerfile exist

docker build -t saikat180891/node-test . // build with tag

docker run -p 8000:8080 saikat180891/node-test // map internal port to external

docker run -p 8000:8080 -it saikat180891/node-test sh
