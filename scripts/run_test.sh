#!/bin/bash

set -e

docker run --rm -t \
  -e NPM_TOKEN="$NPM_TOKEN" \
  -v `pwd`:/app/ \
  -w /app/ \
    node:12.1.0-alpine \
    /bin/sh -c "npm install && npm run lint && npm run test:coverage"
