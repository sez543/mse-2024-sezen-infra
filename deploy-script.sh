#!/bin/bash

IMAGES="sez54321/mse_2024_sezen_be:latest sez54321/mse_2024_sezen_fe:latest"

echo "Removing specified Docker images..."
for IMAGE in $IMAGES; do
  docker rmi $IMAGE || echo "Failed to remove $IMAGE or image not found"
done

echo "Pulling latest images..."
docker-compose pull

echo "Starting services..."
docker-compose up -d
