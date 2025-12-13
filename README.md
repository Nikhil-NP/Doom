# DOOM in Docker 🎮

Run the classic DOOM game in a Docker container!

# Requirements

- Docker installed
- Linux with X11 display server
- `xhost` utility (usually pre-installed)

## How to Run

### Build the Docker image:
```bash
sudo docker build -t doom-game .
```

### Run DOOM:
```bash
./run-doom.sh
```

Or manually:
```bash
xhost +local:docker
sudo docker run --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=$DISPLAY \
    doom-game
xhost -local:docker
```


## Docker Commands Used

```bash
# Build image
sudo docker build -t doom-game .

# Run container
sudo docker run --rm doom-game

# List images
sudo docker images

# Remove image
sudo docker rmi doom-game
```
