FROM docker/for-desktop-kernel:5.15.49-release-0a38e305e2756e76c65c22c4be287df5591239a2 AS docker-for-desktop-kernel
FROM badouralix/toolbox:latest

# The layer contains many more tarballs such as kernel-headers.tar or kernel.tar
# But we only need kernel-dev.tar, which contains /usr/src/
COPY --from=docker-for-desktop-kernel / /
RUN tar -xvf /kernel-dev.tar --directory=/ && \
    mkdir -p /lib/modules/5.15.49-linuxkit-pr && \
    ln -s /usr/src/linux-headers-5.15.49-linuxkit-pr /lib/modules/5.15.49-linuxkit-pr/build

# Install bpfcc-tools from testing instead of stable to pick up https://github.com/iovisor/bcc/pull/3391
# Also install convenient tracing tools such as bpftrace and perf from testing to get recent versions
RUN printf "deb http://deb.debian.org/debian testing main" > /etc/apt/sources.list.d/testing.list && \
    printf "Package: *\nPin: release a=testing\nPin-Priority: 100\n" > /etc/apt/preferences.d/testing.pref && \
    apt-get update && \
    apt-get install --assume-yes --no-install-recommends --target-release=testing bpfcc-tools bpftrace linux-perf && \
    rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
    rm -rf /tmp/* /var/tmp/*

# Run entrypoint script to update kernel config at runtime
COPY entrypoint.sh /
ENTRYPOINT [ "tini", "--", "/entrypoint.sh" ]

# Redefine CMD as per https://stackoverflow.com/a/47063296
CMD [ "/usr/bin/zsh" ]
