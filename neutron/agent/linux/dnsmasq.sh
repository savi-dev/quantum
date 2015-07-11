#!/bin/sh

op="${1:-op}"
mac="${2:-mac}"
ip="${3:-ip}"
hostname="${4}"

#echo $op >> /home/stack/dns-out.txt
#echo curl -X POST http://10.20.21.10:8091/v1.0/network/networks/$NEUTRON_NETWORK_ID/lease/${ip}_${mac}_0 >> /home/stack/dns-out.txt
if [ "$op" = "del" ] 
then
#echo $op >> /home/stack/dns-out.txt
#echo "**************************************" >> /home/stack/dns-out.txt
DATE=`date`
echo "posting $DATE" >> /var/log/dns-out.txt
echo curl -X POST http://10.20.21.10:8091/v1.0/network/networks/$NEUTRON_NETWORK_ID/lease/${ip}_${mac}_0 >> /var/log/dns-out.txt
curl -X POST http://10.20.21.10:8091/v1.0/network/networks/$NEUTRON_NETWORK_ID/lease/${ip}_${mac}_0
fi
