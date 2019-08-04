#!/bin/bash
#再次部署時值執行，負責前次部屬環境清理，檢查docker container開啟數量，並刪除
if [ `docker ps | wc -l` > 1 ]
then
        cd /home/ec2-user/deploy
        docker-compose down
fi
#再次部署時值執行，負責前次部屬環境清理，檢查docker image數量，並刪除
if [`docker images | wc -l` > 1 ]
then
        docker image rm -f 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/dveops-v1:latest
fi

exit 0
