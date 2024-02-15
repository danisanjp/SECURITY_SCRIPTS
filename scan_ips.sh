#!/bin/bash
echo "Introduce la primera IP"
read FirstIP

echo "Introduce la ultima IP"
read LastIP

echo "Introduce el puerto que quieres comprobar"
read port

nmap -sT $FirstIP-$LastIP -p $port -oG web
cat web | grep open >web1
cat web1 |cut -f2 -d":" | cut -f1 -d"(" > web2
cat web2
