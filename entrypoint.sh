#!/bin/sh -l

PATH=$1

cd /docker-action
echo "Running cleanupcode for solution : $PATH"

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t docker-action --build-arg SOLUTIONPATH="$PATH" . && docker run docker-action