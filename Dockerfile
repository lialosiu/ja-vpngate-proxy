FROM debian:11

RUN apt update && apt install -y \
    openvpn \
    v2ray \
    curl \
    procps \
    && apt-get clean autoclean \
    && apt-get autoremove --yes \ 
    && rm -rf /var/lib/apt/lists/*

COPY start.sh /bin/
COPY config.json /etc/v2ray/config.json

EXPOSE 10888

CMD [ "start.sh" ]