FROM ubuntu:22.04

RUN apt-get update && apt-get install -y chocolate-doom

WORKDIR /doom
COPY doom1.wad /doom/

# display for X11
ENV DISPLAY=:0

# Run in windowed mode for easier exit
CMD ["/usr/games/chocolate-doom", "-iwad", "/doom/doom1.wad", "-window"]