FROM alpine


RUN apk update && apk add wget && apk add bash
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/awsGenerateTLS.sh https://raw.githubusercontent.com/nubevalabs/NubevaTools/master/awsGenerateTLS.sh
RUN chmod +x /opt/nubevaTools/awsGenerateTLS.sh
WORKDIR /opt/nubevaTools

CMD /opt/nubevaTools/awsGenerateTLS.sh
