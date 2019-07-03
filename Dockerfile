FROM        debian:8.0
MAINTAINER  johnhany97
ENV         LANG C.UTF-8
RUN         apt-get update && \
  apt-get install -y patch binutils curl mono-devel ca-certificates-mono fsharp mono-vbnc nuget referenceassemblies-pcl \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
