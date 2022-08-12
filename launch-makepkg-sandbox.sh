#!/bin/bash
docker run --rm -it -v $(pwd)/docker-access:/home/build/host arch-makepkg-sandbox 
