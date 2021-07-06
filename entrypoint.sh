#!/bin/sh -l

SOLUTION_PATH=$1

echo "Running cleanupcode for solution : $SOLUTION_PATH"

# here we can make the construction of the image as customizable as we need
# and if we need parameterizable values it is a matter of sending them as inputs
docker build -t docker-action --build-arg solution_path="$SOLUTION_PATH" . && docker run docker-action