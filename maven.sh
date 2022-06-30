#!/bin/bash
docker run -it --rm --name my-maven-project \
        -v "$PWD":/usr/src/mymaven -v "$HOME/.m2":/root/.m2 \
        -p 8090:8080 \
        -w "/usr/src/mymaven" maven:3.3-jdk-8 "$@"
