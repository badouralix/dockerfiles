FROM python:alpine
LABEL maintainer="ayaz.badouraly@via.ecp.fr"

COPY easy-blake2s.py /usr/local/bin/easy-blake2s
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
