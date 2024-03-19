#!/bin/bash

docker run -it --rm \
     -p 2222:22 \
     --gpus all \
     billybag2/upscayl /bin/bash

# -e DISPLAY=192.168.0.12