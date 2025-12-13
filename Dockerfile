FROM ubuntu:22.04

RUN apt-get update && apt-get install -y chocolate-doom

WORKDIR /doom
COPY doom1.wad /doom/

# Volume for persistent save files
VOLUME /doom/saves

# display for X11
ENV DISPLAY=:0

# Run in windowed mode with save directory
CMD ["/usr/games/chocolate-doom", "-iwad", "/doom/doom1.wad", "-window", "-savedir", "/doom/saves"]