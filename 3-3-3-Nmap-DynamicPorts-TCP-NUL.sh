#!/bin/bash
echo Nmap Dynamic Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv -sN -p49152-65535 -oA ./results/$word/$word-nmapDynamicPortsTCPNUL  $word & done
