FROM nginx

# install nginx
RUN apt-get update -y
RUN apt-get upgrade -y
RUN mkdir /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled/
COPY conf/nginx.conf /etc/nginx/nginx.conf

# expose ports
EXPOSE 80

# add nginx conf
ADD conf/moloch.nubevalabs.com /etc/nginx/sites-available/moloch.nubevalabs.com
ADD conf/suricata.nubevalabs.com /etc/nginx/sites-available/suricata.nubevalabs.com
ADD conf/zeek.nubevalabs.com /etc/nginx/sites-available/zeek.nubevalabs.com
ADD conf/wireshark.nubevalabs.com /etc/nginx/sites-available/wireshark.nubevalabs.com
ADD conf/ntopng.nubevalabs.com /etc/nginx/sites-available/ntopng.nubevalabs.com

# create symlinks
RUN ln -s /etc/nginx/sites-available/moloch.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/suricata.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/zeek.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/wireshark.nubevalabs.com /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/ntopng.nubevalabs.com /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx”]
