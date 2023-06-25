#!/bin/bash

# Function to check if a directory exists
check_directory() {
  local dir=$1

  if [ -d "$dir" ]; then
    echo "Directory '$dir' exists."
  else
    echo "Directory '$dir' does not exist."
  fi
}

# Function to check if a file exists
check_file() {
  local file=$1

  if [ -f "$file" ]; then
    echo "File '$file' exists."
  else
    echo "File '$file' does not exist."
  fi
}

# Main script
echo "Checking project directory..."

# Check different directory structures
check_directory "project"
check_directory "project/src"
check_directory "project/scripts"
check_directory "project/docs"

check_file "project/src/main.sh"
check_file "project/src/utils.sh"
check_file "project/scripts/deploy.sh"
check_file "project/docs/readme.txt"

echo "Directory checking completed."

