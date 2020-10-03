FROM openjdk:18-alpine
MAINTAINER Alexey Kharlamov <alexey@kharlamov.biz>

COPY target/hannibal-hbase1.3.0.tgz /
RUN mkdir /opt && \
	tar xfz /hannibal-hbase1.3.0.tgz -C /opt

PORT 9000



