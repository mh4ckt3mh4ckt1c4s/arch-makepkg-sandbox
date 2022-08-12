FROM archlinux:base-devel

RUN useradd -m build 
RUN pacman -Sy && pacman -S git vim wget namcap --noconfirm
RUN echo 'build ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers

USER build
WORKDIR /home/build

ENTRYPOINT bash
