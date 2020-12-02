FROM java:8u111-jre-alpine
MAINTAINER "bane" <fengxiaotx@163.com>

RUN mkdir -p /data/hadoop
RUN mkdir /workspace
RUN apk update
RUN apk upgrade
RUN apk add bash

RUN ssh-keygen -t rsa -C "fengxiaotx@163.com"
RUN cat ~/.ssh/id_rsa.pub >> authorized_keys

COPY ./hadoop-3.3.0 /workspace/hadoop

EXPOSE 80 9870 8088
ENTRYPOINT ["sh","-c","/workspace/hbase/bin/start-hbase.sh && tail -f /dev/null" ]