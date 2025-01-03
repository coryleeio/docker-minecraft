
### Dockerfile for minecraft server
largely based on https://hub.docker.com/r/rlenferink/minecraft with my own preferences


### Initial setup
```shell
docker build . -t coryleeio/minecraft:latest
docker run -d --name=minecraft -p 25565:25565 -v /opt/minecraft:/opt/minecraft coryleeio/minecraft:latest /bootstrap
```
