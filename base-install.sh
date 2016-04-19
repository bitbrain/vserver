#!/bin/bash

# update cache
echo "Updating cache.."
apt-get update

# install tools
echo "Installing tools.."
apt-get install -y \
        build-essential \
        maven \
        docker
