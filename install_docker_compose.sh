#!/bin/bash 

V="`curl -s https://github.com/docker/compose/releases/latest |awk -F '/' '{printf("%s\n",$8)}'|cut -d '"' -f 1`" 


[ -f /usr/local/bin/docker-compose ] && rm -f /usr/local/bin/docker-compose 
/usr/bin/curl -L "https://github.com/docker/compose/releases/download/${v}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
