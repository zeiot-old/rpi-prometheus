# VERSION 1.4.1
# AUTHOR:         Nicolas Lamirault <nicolas.lamirault@gmail.com>
# DESCRIPTION:    zeiot/rpi-prometheus

FROM resin/armv7hf-debian:jessie
MAINTAINER Nicolas Lamirault <nicolas.lamirault@gmail.com>

ENV PROMETHEUS_VERSION 1.4.1

ADD https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-armv7.tar.gz /prometheus.tar.gz

RUN tar -xf /prometheus.tar.gz && \
    rm /prometheus.tar.gz && \
    mv prometheus-${PROMETHEUS_VERSION}.linux-armv7 /usr/share/prometheus && \
    cp /usr/share/prometheus/prometheus /usr/bin/prometheus && \
    cp /usr/share/prometheus/promtool /usr/bin/promtool && \
    mkdir /etc/prometheus

RUN ln -s /usr/share/prometheus/console_libraries /usr/share/prometheus/consoles/ && \
    ln -s /usr/share/prometheus/prometheus.yml /etc/prometheus/prometheus.yml

EXPOSE     9090

VOLUME     [ "/prometheus" ]

ENTRYPOINT [ "/usr/bin/prometheus" ]

CMD        [ "-config.file=/etc/prometheus/prometheus.yml", \
             "-storage.local.path=/prometheus", \
             "-web.console.libraries=/usr/share/prometheus/console_libraries", \
             "-web.console.templates=/usr/share/prometheus/consoles" ]
