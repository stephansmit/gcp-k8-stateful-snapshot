#!/bin/bash
PROJECT_ID='kubernetes-helloworld-storage'
COMPUTE_ZONE='us-west1-a'
COMPUTE_REGION='us-west1'
DISK_NAME='pd-helloworld'
DISK_TYPE='pd-ssd'
DISK_SIZE='100GB'
CLUSTER_NAME='k8-stateful-snapshot'


#set gcloud variables
gcloud config set project $PROJECT_ID
gcloud config set compute/zone $COMPUTE_ZONE
gcloud config set compute/region $COMPUTE_REGION

#create persistent disk
#gcloud compute disks create $DISK_NAME --type=$DISK_TYPE --size=$DISK_SIZE --quiet
#deploy k8 cluster
gcloud container clusters create $CLUSTER_NAME --num-nodes=1 --addons=GcePersistentDiskCsiDriver --quiet
#get creds ~/.kubeconfig
gcloud container clusters get-credentials $CLUSTER_NAME



#kubectl create deployment hello-server \
#    --image=us-docker.pkg.dev/google-samples/containers/gke/hello-app:1.0
#expose server
#kubectl expose deployment hello-server --type LoadBalancer --port 80 --target-port 8080

