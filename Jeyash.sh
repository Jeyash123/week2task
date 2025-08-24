#!/bin/bash

echo "Checking shell scripts for syntax errors..."

for file in *.sh; do
  if [ -f "$file" ]; then
    echo "Checking: $file"
    bash -n "$file" || echo "Syntax error in $file"
  fi
done