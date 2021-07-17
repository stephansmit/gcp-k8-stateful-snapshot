#!/bin/bash

kubectl scale statefulsets geth-deployment --replicas=0
kubectl apply -f geth_snapshot.yaml 
