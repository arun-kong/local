#!/bin/bash

# Set environment variable
export KONG_IMAGE=kong/kong-gateway:2.8.4.2-alpine

# Run docker-compose
docker-compose -f docker-compose.yaml up -d

