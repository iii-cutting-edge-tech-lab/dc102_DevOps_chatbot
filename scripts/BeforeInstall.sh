
#!/bin/bash
#登入ECR repo
$(aws ecr get-login --no-include-email --registry-ids 204065533127 --region ap-northeast-1)
#依據docker image數量刪除EC2內的image檔，並從ECR內下載最新版本的image檔
if [ `docker images | wc -l` > 1 ]
then
        docker image rm -f 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/devops-v1
else
        docker pull 204065533127.dkr.ecr.ap-northeast-1.amazonaws.com/devops-v1
fi
exit 0
