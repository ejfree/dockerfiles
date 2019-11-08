FROM nginx

# install nginx
RUN apt-get update -y
RUN apt-get upgrade -y
RUN mkdir /opt/nubevaTools
COPY script/awsGenerateTLS.sh /opt/nubevaTools/awsGenerateTLS.sh

# add nginx conf
ADD conf/moloch.nubevalabs.com /etc/nginx/sites-available/moloch.nubevalabs.com



WORKDIR /opt/nubevaTools

CMD /opt/nubevaTools/awsGenerateTLS.sh
