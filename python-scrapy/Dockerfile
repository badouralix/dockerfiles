FROM debian:stretch
MAINTAINER Ayaz BADOURALY <ayaz.badouraly@via.ecp.fr>

RUN apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		gcc \
		libffi-dev \
		libssl-dev \
		libxml2-dev \
		libxslt1-dev \
		python-pip \
		python-dev \
		zlib1g-dev && \
	apt-get clean && \
	rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip && \
	pip install --upgrade \
		setuptools \
		wheel && \
	pip install --upgrade scrapy

CMD ["scrapy", "shell", "--nolog"]
