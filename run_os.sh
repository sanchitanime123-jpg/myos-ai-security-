#!/bin/bash

echo "Building your OS..."
docker build -t my-custom-os .

echo "Launching OS..."
docker run -it --rm --name my-os-instance my-custom-os /bin/bash
