FROM alpine


RUN apk update && apk add wget
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/awsGenerate.tls https://raw.githubusercontent.com/nubevalabs/NubevaTools/master/awsGenereateTLS.sh

WORKDIR /opt/nubevaTools

CMD /opt/nubevaTools/awsGenerateTLS.sh
