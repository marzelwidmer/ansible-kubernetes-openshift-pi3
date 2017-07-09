#!/bin/sh

for i in 0 1 2 3
do
  echo "Cleaning up KCLUSTER${i}"
  ssh-keygen -R KCLUSTER${i}
  ssh-keygen -R 192.168.0.20${i}
  ssh-keyscan -H KCLUSTER${i} >> ~/.ssh/known_hosts
  ssh-keyscan -H 192.168.0.20${i} >> ~/.ssh/known_hosts
done
