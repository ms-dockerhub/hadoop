#!/usr/bin/env bash

docker build -f Dockerfile --force-rm=true --rm -t registry.cn-shanghai.aliyuncs.com/ms-dockerhub/ms.hadoop:3.3.0-alpine_1 .