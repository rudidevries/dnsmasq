FROM local-jessie
MAINTAINER Rudi de Vries <rudidevries 'at' gmail 'dot' com>

#install packages
RUN apt-get update && apt-get install -y \
	dnsmasq \
	dnsutils \
        bash

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 53

ENTRYPOINT ["/bin/bash","./entrypoint.sh"]
