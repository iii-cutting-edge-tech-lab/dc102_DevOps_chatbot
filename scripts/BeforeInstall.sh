#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 204065533127  --region ap-northeast-1)

if [ `docker images | grep flask-devops | wc -l`  = 1 ]
then
        docker rmi flask-devops
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/devops-test
else
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/devops-test
fi
