FROM python:latest

LABEL org.opencontainers.image.authors="Ayaz BADOURALY"
LABEL org.opencontainers.image.description="Docker image for scrapy"

RUN python3 -m pip install --no-cache-dir --upgrade scrapy

CMD [ "scrapy", "shell", "--nolog" ]
