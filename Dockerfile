FROM ubuntu:22.04

RUN apt-get update && apt-get install -y chocolate-doom

WORKDIR /doom
COPY doom1.wad /doom/

CMD ["chocolate-doom", "-iwad", "/doom/doom1.wad"]