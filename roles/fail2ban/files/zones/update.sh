#!/bin/sh
echo "create blacklist hash:net family inet hashsize 8192 maxelem 65536" > ../ipset.save;

for zone in *zone; 
do 
  for ip in `cat $zone`; 
  do 
    echo "add blacklist $ip" >> ../ipset.save; 
  done; 
done
