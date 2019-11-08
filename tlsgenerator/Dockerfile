FROM nginx

# install nginx
RUN apt-get update -y
RUN apt-get upgrade -y
RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/
COPY conf/nginx.conf /etc/nginx/nginx.conf

# add nginx conf
ADD conf/moloch.nubevalabs.com /etc/nginx/sites-available/moloch.nubevalabs.com



WORKDIR /etc/nginx

CMD /usr/sbin/nginx
SAMPLE
