#!/bin/bash
DISK_NAME='pd-helloworld'
CLUSTER_NAME='k8-stateful-snapshot'

gcloud container clusters delete $CLUSTER_NAME
gcloud compute disks delete $DISK_NAME --quiet
#gcloud compute snapshots delete $SNAPSHOT_NAME --quiet


