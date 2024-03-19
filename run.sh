#!/bin/bash

docker run -it --rm -e DISPLAY=192.168.0.12 -p 2222:22 --gpus all billybag2/upscayl /bin/bash
