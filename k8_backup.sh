#!/bin/bash
PROJECT_ID='kubernetes-helloworld-storage'
COMPUTE_ZONE='us-west1-a'
COMPUTE_REGION='us-west1'
DISK_NAME='pd-helloworld'
DISK_TYPE='pd-ssd'
DISK_SIZE='100GB'
CLUSTER_NAME='k8-stateful-snapshot'


#create persistent volume with persistent disk
#kubectl create -f pv.yaml
#create the persistent volume claim
#kubectl create -f pvc.yaml
#create geth service
#kubectl create -f service.yaml
#create the stateful set with geth
#kubectl create -f geth.yaml

#kubectl create deployment hello-server \
#    --image=us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
#expose server
#kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080

