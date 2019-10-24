FROM ubuntu:14.04

# install nginx
RUN apt-get update -y
RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update -y
RUN apt-get install -y nginx

# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80

# add nginx conf
ADD conf/ntopng.nubevalabs.com /etc/nginx/sites-available/ntopng.nubevalabs.com

# create symlinks
RUN ln -s /etc/nginx/sites-available/ntopng.nubevalabs.com /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx”]