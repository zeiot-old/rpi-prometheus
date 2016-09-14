# VERSION 1.1.2
# AUTHOR:         Nicolas Lamirault <nicolas.lamirault@gmail.com>
# DESCRIPTION:    zeiot/rpi-prometheus

FROM resin/armv7hf-debian:jessie
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

ENV PROMETHEUS_VERSION 1.1.2

RUN apt-get update && \
    curl -L https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-armv7.tar.gz && \
    tar xzf prometheus-${PROMETHEUS_VERSION}.linux-armv7.tar.gz && \
    mv prometheus-${PROMETHEUS_VERSION}.linux-armv7 /usr/share/prometheus && \
    cp /usr/share/prometheus/prometheus /usr/bin/prometheus &&
    rm prometheus-${PROMETHEUS_VERSION}.linux-armv7.tar.gz

RUN ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ /etc/prometheus/

EXPOSE     9090

VOLUME     [ "/prometheus" ]

ENTRYPOINT [ "/usr/bin/prometheus" ]

CMD        [ "-config.file=/etc/prometheus/prometheus.yml", \
             "-storage.local.path=/prometheus", \
             "-web.console.libraries=/usr/share/prometheus/console_libraries", \
             "-web.console.templates=/usr/share/prometheus/consoles" ]
