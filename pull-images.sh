#!/bin/bash

while IFS= read -r line
do
  docker pull "$line"
done < images.txt
