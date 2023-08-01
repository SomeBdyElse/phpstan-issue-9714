#!/bin/bash
docker build --target without -t without-ext .; docker run -it --rm without-ext
docker build --target with -t with-ext .; docker run -it --rm with-ext
