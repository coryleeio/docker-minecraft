
### Dockerfile for minecraft server
largely based on https://hub.docker.com/r/rlenferink/minecraft with my own preferences


### Initial setup
```shell
docker build . -t coryleeio/minecraft:latest
docker run --init --rm --name %n \
    -v /opt/minecraft:/opt/minecraft \
    -p 25565:25565 \
    coryleeio/minecraft:latest
```
