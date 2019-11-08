
Dockerfile
#FROM ubuntu:14.04
FROM nginx

# update
RUN apt-get update -y
#RUN apt-get install -y python-software-properties
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get upgrade -y
#RUN apt-get install -y nginx
RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/


# deamon mode off - REQUIRED
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
#RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80

# add nginx conf
ADD conf/ntopng.nubevalabs.com /etc/nginx/sites-available/ntopng.nubevalabs.com

# create symlinks
RUN ln -s /etc/nginx/sites-available/ntopng.nubevalabs.com /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx”]
