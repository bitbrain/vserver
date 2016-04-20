#!/bin/bash

# Script to pull changes and build the jekyll project
#
# $JEKYLL_SOURCE describes the source folder to generate from
# $JEKYLL_DESTINATION describes the destination folder to generate to

# Pull latest changes
cd $JEKYLL_SOURCE
git up

jekyll build \
  --source=$JEKYLL_SOURCE \
  --destination=$JEKYLL_DESTINATION
