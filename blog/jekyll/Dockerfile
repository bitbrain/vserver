FROM ubuntu:14.04.4
MAINTAINER bitbrain

ENV REPOSITORY=https://github.com/MyRealityCoding/myrealitycoding.github.io.git
ENV JEKYLL_SOURCE=/myrealitycoding.github.io
ENV JEKYLL_DESTINATION=/usr/share/nginx/html

# Create the target repository
RUN mkdir -p $JEKYLL_DESTINATION

VOLUME $JEKYLL_DESTINATION

# install required tools
RUN apt-get install -y \
    software-properties-common
RUN add-apt-repository -y ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    ruby2.1 \
    ruby2.1-dev \
    git

# install ruby gems
RUN gem install \
    git-up \
    jekyll \
    jekyll-paginate \
    json

# Clone repository
RUN git clone $REPOSITORY

# Copy the build script
ADD jekyll-build.sh jekyll-build.sh

# Run the jekyll build script
CMD ["/bin/bash", "jekyll-build.sh"]
