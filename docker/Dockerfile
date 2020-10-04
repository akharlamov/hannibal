FROM adoptopenjdk/openjdk8:alpine-slim
MAINTAINER Alexey Kharlamov <alexey@kharlamov.biz>

COPY target/hannibal-hbase1.3.0.tgz /

COPY docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN tar xfz /hannibal-hbase1.3.0.tgz -C /opt
RUN chown -R nobody /opt/hannibal

ENV HANNIBAL_HBASE_QUORUM=localhost
ENV HANNIBAL_HTTP_PORT=9000

USER nobody
EXPOSE 9000

WORKDIR /opt/hannibal
ENTRYPOINT /entrypoint.sh
