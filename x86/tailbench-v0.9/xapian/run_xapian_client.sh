#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export dir=run_network_$(date +%Y%m%d-%H:%M:%S)
export RESULT_DIR=/mnt/nfs1/result/${dir}/
export DATA_ROOT=${DIR}/../../../tailbench-data/
mkdir -p ${RESULT_DIR}
echo 'RESULT_DIR=' ${RESULT_DIR}


NSERVERS=1
QPS=5
#WARMUPREQS=10
#REQUESTS=100

bg_tm=$(date +%s)

APP_NAME=xapian TBENCH_SERVER_PORT=10000 \
TBENCH_SERVER=10.30.6.62 TBENCH_RANDSEED=${RANDOM} TBENCH_QPS=${QPS} TBENCH_MINSLEEPNS=100000 \
    TBENCH_TERMS_FILE=${DATA_ROOT}/xapian/terms.in \
    chrt -r 99 ${DIR}/xapian_networked_client

ed_tm=$(date +%s)

#echo $! > client.pid

echo `awk "BEGIN{printf \"RunTime:%d s\n\",(${ed_tm}-${bg_tm})}"`

echo $(date +%Y%m%d-%H:%M:%S)
