# Arch makepkg sandbox

## What is it ?

This repo contains a simple Dockerfile and launch script intended to create and test ArchLinux [PKGBUILDs](https://wiki.archlinux.org/title/Creating_packages).

## But why ?

I found some Docker images about **building** ArchLinux packages with `makepkg`, but not actually testing and creating it. I wanted something really simple in which I would be able to work and test my `PKGBUILDs` easily.

## Usage

Just copy these commands to clone the repository and launch the sandbox :

```shell 
git clone git@gitlab.com:mh4ckt3mh4ckt1c4s/arch-makepkg-sandbox.git
cd arch-makepkg-sandbox
./build-makepkg-sandbox.sh
./launch-makepkg-sandbox.sh
 ```

 Otherwise, you can just use the automatically generated Docker image :

 ```shell
 docker run -it --rm registry.gitlab.com/mh4ckt3mh4ckt1c4s/arch-makepkg-sandbox
 ```

You will have all privileges with `sudo` (no need for password). The basic build tools are present (`base-devel` arch package), along with `git` and `vim`. You also have `wget` to fetch source code and `namcap` to check the packages you created. You will be able to use the `build` user, which have all sudo rights and will be allow you to build and test packages.

 If you're using the launch script, a `host` directory will be created in the home folder of your sandbox, which you can access from your host machine with the `docker-access` folder.

 Enjoy !
