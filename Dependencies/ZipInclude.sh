#!/bin/bash

# ���ͷ�ļ�������ͬ����cygwin�С�eclipse��Ҫʹ��
CUR_PATH=$(cd `dirname $0`; pwd)
INCLUDE_PATH='/usr/include /usr/local/include'
ZIP_FILE=${CUR_PATH}/include.zip

rm -f ${ZIP_FILE}

for path in ${INCLUDE_PATH}
do
	cd ${path} && zip -rq ${ZIP_FILE} *
done 

echo "${ZIP_FILE} making done"
echo "update cygwin headers: "
echo "	1.copy ${ZIP_FILE} to /usr/include/ of cygwin"
echo "	2.unzip include.zip to the current directory"