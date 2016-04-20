FROM nginx

MAINTAINER bitbrain

ADD my-reality.de my-reality.de

RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/
RUN mv my-reality.de /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/my-reality.de /etc/nginx/sites-enabled/my-reality.de
