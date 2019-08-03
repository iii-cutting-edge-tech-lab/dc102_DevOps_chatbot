#!/bin/bash
#開啟服務
#cd /home/ec2-user/deploy
docker-compose -f /home/ec2-user/deploy/docker-compose.yml up -d
exit 0
