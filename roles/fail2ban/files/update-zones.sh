#!/bin/sh

echo "create blacklist hash:net family inet hashsize 8192 maxelem 65536" > ../ipset.save;

for country in bh br cn hk id in iq ir md mx pk it ru sa th tn tw;
do
  wget http://www.ipdeny.com/ipblocks/data/aggregated/${country}-aggregated.zone
  for ip in `cat ${country}-aggregated.zone`;
  do
     echo "add blacklist $ip" >> ./ipset.save;
  done;
  rm -f ${country}-aggregated.zone
done

