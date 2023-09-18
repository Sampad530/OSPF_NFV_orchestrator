#!/bin/bash

while getopts ":1234" opt; do
  case $opt in
    1)
      # topology1a
      docker-compose -f topology_1a/docker-compose-topology1a.yml down
      docker-compose -f topology_1b/docker-compose-topology1b.yml down
      docker-compose -f topology_1c/docker-compose-topology1c.yml down
      docker-compose -f topology_1d/docker-compose-topology1d.yml down
      docker container prune -f
      docker network prune -f
      docker volume prune -f
      docker image prune -f
      docker-compose -f topology_1a/docker-compose-topology1a.yml up -d
      ;;
    2)
      # topology1b
      docker-compose -f topology_1a/docker-compose-topology1a.yml down
      docker-compose -f topology_1b/docker-compose-topology1b.yml down
      docker-compose -f topology_1c/docker-compose-topology1c.yml down
      docker-compose -f topology_1d/docker-compose-topology1d.yml down
      docker container prune -f
      docker network prune -f
      docker volume prune -f
      docker image prune -f      
      docker-compose -f topology_1b/docker-compose-topology1b.yml up -d
      ;;
    3)
      # topology1c
      docker-compose -f topology_1a/docker-compose-topology1a.yml down
      docker-compose -f topology_1b/docker-compose-topology1b.yml down
      docker-compose -f topology_1c/docker-compose-topology1c.yml down
      docker-compose -f topology_1d/docker-compose-topology1d.yml down
      docker container prune -f
      docker network prune -f
      docker volume prune -f
      docker image prune -f
      docker-compose -f topology_1c/docker-compose-topology1c.yml up -d
      ;;
    4)
      # topology1d
      docker-compose -f topology_1a/docker-compose-topology1a.yml down
      docker-compose -f topology_1b/docker-compose-topology1b.yml down
      docker-compose -f topology_1c/docker-compose-topology1c.yml down
      docker-compose -f topology_1d/docker-compose-topology1d.yml down
      docker container prune -f
      docker network prune -f
      docker volume prune -f
      docker image prune -f
      docker-compose -f topology_1d/docker-compose-topology1d.yml up -d
      ;;
    \?)
      #echo "Invalid option: -$OPTARG" >&2
      cat readme.md
      exit 1
      ;;
  esac
done

# Shift the options so that any additional arguments are accessible
shift $((OPTIND-1))

# Add any additional commands or logic here if needed

exit 0
