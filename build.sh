#!/bin/bash
DOCKER_BUILDKIT=1
cd docker
DOCKER_BUILDKIT=1 \
    docker build \
        -t billybag2/upscayl \
        .
