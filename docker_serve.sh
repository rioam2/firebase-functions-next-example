#!/bin/sh

# Run the application in a docker container
docker run \
    -v "$(pwd):/opt/app" \
    -it \
    firebase-functions-next-example yarn serve