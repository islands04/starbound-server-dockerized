#!/bin/bash

# Build changes (if necessary)
./docker_build.sh

# Run a container
docker run -p 0.0.0.0:21025:21025/tcp --name starbound-server -it --rm starbound-server

