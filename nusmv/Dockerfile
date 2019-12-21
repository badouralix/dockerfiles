FROM alpine:3.7 AS dl
RUN mkdir nusmv
RUN wget http://nusmv.fbk.eu/distrib/NuSMV-2.6.0-zchaff-linux64.tar.gz && \
    tar -xvzf NuSMV-2.6.0-zchaff-linux64.tar.gz -C nusmv --strip-components=1
RUN cd nusmv/bin && \
    ln -s NuSMV nusmv

FROM alpine:3.7
LABEL org.opencontainers.image.authors="Ayaz BADOURALY" \
      org.opencontainers.image.description="Docker image with NuSMV and zchaff SAT solver"
WORKDIR /input
COPY entrypoint.sh /
COPY --from=dl nusmv /opt/nusmv
ENV PATH="/opt/nusmv/bin:${PATH}"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nusmv"]
