#!/bin/bash
microServName="chatbot"
while port=$(shuf -n1 -i $(cat /proc/sys/net/ipv4/ip_local_port_range | tr '\011' '-'))
netstat -atun | grep -q ":$port\s" ; do
    continue
done
docker build -t $microServName$port/node-web-app github.com/CilantroLeaver/microservices-docker
sleep 10
docker run -p $port:8080 -d $microServName$port/node-web-app
echo "New $microServName running locally on port $port"
