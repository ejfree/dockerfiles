FROM alpine


RUN apk update && apk add wget && apk add bash
RUN mkdir /opt/nubevaTools
RUN wget -O /opt/nubevaTools/loadGenerateTLS.sh https://raw.githubusercontent.com/nubevalabs/NubevaTools/master/loadGenerateTLS.sh
RUN chmod +x /opt/nubevaTools/loadGenerateTLS.sh
WORKDIR /opt/nubevaTools

CMD /opt/nubevaTools/loadGenerateTLS.sh
