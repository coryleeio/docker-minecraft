FROM ubuntu:22.04
RUN DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get install -y \
    software-properties-common \
    curl \ 
    openjdk-21-jdk-headless \
         && apt-get clean
RUN useradd -d /opt/minecraft -ms /bin/bash minecraft
COPY ./bootstrap /bootstrap
RUN chmod +x /bootstrap
RUN chown minecraft /bootstrap
EXPOSE 25565
VOLUME ["/opt/minecraft"]
USER minecraft
ENTRYPOINT /bootstrap

