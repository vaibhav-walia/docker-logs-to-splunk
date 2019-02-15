#!/bin/bash
if [ $# -ne 4 ]
  then
    echo "Invalid arguments!"
    echo "Usage:"
    echo "sh buildAndRun.sh <#_fake_containers> <#_example_app_containers> <splunk_url:port> <splunk_token>"
    exit 1
fi

numFake=$1
numPet=$2
splunk_endpoint=$3
splunkToken=$4

cd gen
docker build -t fakelogs .
i="0"
while [ $i -lt $numFake ]
do
  docker run -d \
             --log-driver=splunk \
             --log-opt splunk-token=$splunkToken \
             --log-opt splunk-url=$splunk_endpoint \
             --log-opt splunk-insecureskipverify=true \
             --log-opt tag="fakelogs/{{.FullID}}" \
             --log-opt labels=container \
             --label container="fakelog/$i" \
         fakelogs
  ((i++))
done

cd ../pet
docker build -t petclinic .
i="0"
while [ $i -lt $numPet ]
do
  docker run -d \
             --log-driver=splunk \
             --log-opt splunk-token=$splunkToken \
             --log-opt splunk-url=$splunk_endpoint \
             --log-opt splunk-insecureskipverify=true \
             --log-opt tag="petclinic/{{.FullID}}" \
             --log-opt labels=container \
             --label container="petclinic/$i" \
         petclinic
  ((i++))
done
