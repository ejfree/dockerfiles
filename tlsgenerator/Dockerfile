FROM alpine


RUN apk update && apk add wget
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/awsGenerateTLS.sh https://raw.githubusercontent.com/nubevalabs/NubevaTools/master/awsGenerateTLS.sh

WORKDIR /opt/nubevaTools

CMD /opt/nubevaTools/awsGenerateTLS.sh
