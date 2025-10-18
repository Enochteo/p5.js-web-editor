#!/bin/bash

docker-compose -f docker-compose-development.yml build
cp .env.example .env
docker-compose -f docker-compose-development.yml run --rm app npm run fetch-examples
docker-compose -f docker-compose-development.yml up