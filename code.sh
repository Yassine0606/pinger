#!/bin/bash


for i in {1..255}
do
ad=172.27.191.$i
ping -c 1 $ad
if [ $? = 0 ]
then  echo $ad >> online.txt
else echo $ad >> offline.txt
fi
done
echo "Il y a `wc -l online.txt | cut -d ' ' -f 1` utilisateurs en ligne et `wc -l offline.txt | cut -d ' ' -f 1` utilis>


