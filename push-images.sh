#!/bin/bash

# Registry URL
REGISTRY="registry.redltd.tech:5000"

# Read image names from images.txt
while IFS= read -r line
do
  # Tag the local image with the registry URL
  docker tag "$line" "$REGISTRY/$line"

  # Push the image to the registry
  docker push "$REGISTRY/$line"
done < images.txt
