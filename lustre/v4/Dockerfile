FROM debian:jessie
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

# Install utils
RUN apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		build-essential wget && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install lustre
ENV LUSTRE_INSTALL /opt/lustre

RUN mkdir -p ${LUSTRE_INSTALL} && \
	wget -qO- http://www-verimag.imag.fr/DIST-TOOLS/SYNCHRONE/lustre-v4/distrib/linux64/lustre-v4-III-ca-linux64.tgz | \
		tar -xzf - --directory=${LUSTRE_INSTALL} --strip-components=2 && \
	echo "source $LUSTRE_INSTALL/setenv.sh" >> ~/.bashrc

WORKDIR /app

#ENTRYPOINT ["/bin/bash"]
CMD ["/bin/bash"]

