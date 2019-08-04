#!/bin/bash
#由Docker開啟container數量判斷是否成功
if [ `docker ps | wc -l` = 2 ]
then
         exit 0
else
         exit 1
fi

