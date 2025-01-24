#!/bin/bash

# Set the environment variable
ENVIRONMENT=${ENVIRONMENT:-local}

# Choose the Dockerfile based on the environment
if [ "${ENVIRONMENT}" == "local" ]; then
  docker-compose -f ./docker/local/local.docker-compose.yml up
else
  docker-compose -f ./docker/prod/prod.docker-compose.yml up
fi