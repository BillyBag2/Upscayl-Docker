# Upscayl-Docker

Upscayl docker image

# Why

I have a headless compute server that I want to run Upscayl on.

# Build image.

* Run `./get_install.sh` to fetch the install file.
* Run `./build.sh` to build the docker image.

# Running a container from the image

Use `./run.sh` to run the image.

You may need to start ssh with `service ssh start`

# Connecting to the running container

ssh to the host on port 2222 with x forwarding enabled.

User is `root`, password is `root`.

Something like `ssh root@<docker host ip> -p 2222`

You may need to set DISPLAY to <ip>:10.0

export DISPLAY=<GUI client ip>:10.0

To run as root use `upscayl --no-sandbox`

I am using a windows X client `xlaunch` and using putty for ssh and x forwarding.
