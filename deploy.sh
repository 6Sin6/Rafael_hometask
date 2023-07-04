#!/bin/bash

# Set the project directory
PROJECT_DIR="C:\Users\alexs\Desktop\project"

# Build the Docker image using CMake
build_image() {
  cd "$PROJECT_DIR"
  cmake --build .
}

# Deploy the Docker image
deploy() {
  # Build the Docker image
  build_image

  # Run the Docker container
  docker run mypythonapp
}

# Main entry point
main() {
  echo "Starting deployment..."

  # Check if Docker is installed
  if ! [ -x "$(command -v docker)" ]; then
    echo "Error: Docker is not installed. Please install Docker and try again."
    exit 1
  fi

  # Check if CMake is installed
  if ! [ -x "$(command -v cmake)" ]; then
    echo "Error: CMake is not installed. Please install CMake and try again."
    exit 1
  fi

  # Deploy the project
  deploy

  echo "Deployment completed."
}

# Run the main function
main
