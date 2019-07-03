FROM        debian:jessie
MAINTAINER  johnhany97
ENV         LANG C.UTF-8
RUN         apt-get update && \
            apt-get install -y patch binutils curl mono-devel fsharp mono-vbnc nuget && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
