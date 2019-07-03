FROM        debian:9.0
MAINTAINER  johnhany97
ENV         LANG C.UTF-8
RUN         apt-get update && \
            apt-get install -y apt-transport-https dirmngr gnupg ca-certificates && \
            apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
            echo "deb https://download.mono-project.com/repo/debian stable-stretch main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
            apt-get update && \
            apt-get install -y patch binutils curl mono-devel fsharp mono-vbnc nuget && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
