FROM nginx
MAINTAINER bitbrain

# install required tools
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    ruby \
    ruby-dev \
    unzip \
    wget

# install ruby gems
RUN gem install \
    jekyll \
    jekyll-paginate \
    json

# download blog repository
RUN wget https://github.com/MyRealityCoding/myrealitycoding.github.io/archive/master.zip

# Unzip blog repository
RUN unzip master.zip -d .
RUN rm master.zip

# Build the blog
RUN jekyll build \
    --source myrealitycoding.github.io-master \
    --destination /usr/share/nginx/html
