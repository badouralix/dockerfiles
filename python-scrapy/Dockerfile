FROM debian:buster

LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Docker image for scrapy"

RUN apt-get update && \
	apt-get install --assume-yes --no-install-recommends \
		gcc \
		libffi-dev \
		libssl-dev \
		libxml2-dev \
		libxslt1-dev \
		python3-pip \
		python3-dev \
		zlib1g-dev \
		&& \
	rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
	rm -rf /tmp/* /var/tmp/*

RUN python3 -m pip install --upgrade \
		setuptools \
		wheel \
		&& \
	python3 -m pip install --upgrade scrapy

CMD ["scrapy", "shell", "--nolog"]
