FROM alpine:latest
LABEL maintainer="LibFRi <libfrichard@gmail.com>"

WORKDIR /root

COPY update-chinalist.sh /root/update-chinalist.sh
COPY Corefile /etc/coredns/Corefile

RUN set -ex \
  && apk add --no-cache unzip ca-certificates bind-tools dumb-init \
  && update-ca-certificates \
  && chmod +x /root/update-chinalist.sh \
  && /root/update-chinalist.sh \
  && crontab -l 0 14 */2 * * /root/update-chinalist.sh \
  && wget https://github.com/leiless/dnsredir/releases/latest/download/coredns-dnsredir-linux-amd64.zip \
  && unzip coredns-dnsredir-linux-amd64.zip \
  && apk del unzip \
  && rm coredns-dnsredir-linux-amd64.zip \
  && mv coredns-dnsredir-linux-amd64 /usr/local/bin/coredns \
  && /usr/local/bin/coredns -version

EXPOSE 53 53/udp

VOLUME /etc/coredns

ENV TZ=Asia/Shanghai

ENTRYPOINT ["dumb-init"]

CMD ["/usr/local/bin/coredns", "-conf", "/etc/coredns/Corefile"]
