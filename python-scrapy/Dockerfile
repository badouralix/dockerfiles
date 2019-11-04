FROM debian:buster
LABEL maintainer="ayaz.badouraly@via.ecp.fr"

RUN apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		gcc \
		libffi-dev \
		libssl-dev \
		libxml2-dev \
		libxslt1-dev \
		python3-pip \
		python3-dev \
		zlib1g-dev && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN python3 -m pip install --upgrade \
		setuptools \
		wheel && \
	python3 -m pip install --upgrade scrapy

CMD ["scrapy", "shell", "--nolog"]
