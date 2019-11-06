#FROM ubuntu:14.04
FROM nginx

# install nginx
RUN apt-get update -y
#RUN apt-get install -y python-software-properties
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository -y ppa:nginx/stable
#RUN apt-get update -y
#RUN apt-get install -y nginx
RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/
COPY conf/nginx.conf /etc/nginx/nginx.conf

# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
#RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80

# add nginx conf
ADD conf/ntopng.nubevalabs.com /etc/nginx/sites-available/ntopng.nubevalabs.com
ADD conf/moloch.nubevalabs.com /etc/nginx/sites-available/moloch.nubevalabs.com
ADD conf/suricata.nubevalabs.com /etc/nginx/sites-available/suricata.nubevalabs.com
ADD conf/zeek.nubevalabs.com /etc/nginx/sites-available/zeek.nubevalabs.com
ADD conf/wireshark.nubevalabs.com /etc/nginx/sites-available/wireshark.nubevalabs.com

# create symlinks
RUN ln -s /etc/nginx/sites-available/ntopng.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/moloch.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/suricata.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/zeek.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/wireshark.nubevalabs.com /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx”]
