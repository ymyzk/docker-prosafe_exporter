FROM alpine:latest

ARG VERSION=0.2.7

RUN cd /tmp && \
    wget -O temp.zip https://github.com/dalance/prosafe_exporter/releases/download/v$VERSION/prosafe_exporter-v$VERSION-x86_64-lnx.zip && \
    unzip temp.zip && \
    chmod 755 ./prosafe_exporter && \
    mv ./prosafe_exporter /usr/local/bin && \
    rm ./temp.zip

USER nobody

CMD ["prosafe_exporter"]
