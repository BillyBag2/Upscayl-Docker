ARG UBUNTU_VERSION=22.04

ARG CUDA_VERSION=11.8.0

FROM nvidia/cuda:${CUDA_VERSION}-devel-ubuntu${UBUNTU_VERSION}

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    git \
    nano \
    wget \
    openssh-server \
    x11-apps \
    libgtk-3-0 \
    libnotify4 \
    libnss3 \
    libxss1 \
    libxtst6 \
    xdg-utils \
    libsecret-1-0 \
    libappindicator3-1 \
    libdrm2 \
    libgbm1 \
    libasound2 \
    dbus \
    x11-xserver-utils \
    xauth \
    && rm -rf /var/lib/apt/lists/*

RUN --mount=type=bind,target=/upscayl-2.10.0-linux.deb,source=upscayl-2.10.0-linux.deb,readonly \
    apt-get install -y /upscayl-2.10.0-linux.deb

RUN mkdir /var/run/sshd
# Set root password
RUN echo 'root:root' | chpasswd
# Allow root login
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -i 's/#X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Not sure what these two lines do ?
ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
