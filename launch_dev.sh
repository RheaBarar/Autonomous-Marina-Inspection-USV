#!/bin/bash
docker run -it \
  --env DISPLAY=:0 \
  --env WAYLAND_DISPLAY=wayland-0 \
  --env XDG_RUNTIME_DIR=/mnt/wslg/runtime-dir \
  --volume /tmp/.X11-unix:/tmp/.X11-unix \
  --volume /mnt/wslg:/mnt/wslg \
  --volume ~/marina_asv:/root/marina_asv \
  --name marina_asv_dev \
  marina_asv:latest \
  bash
