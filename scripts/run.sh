#!/bin/bash 
#populate these variables
export TMC_API_TOKEN=$API_TOKEN
export KUBECONFIG=$KUBECONFIG

#attach the cluster
echo "Attaching Cluster: " $CLUSTER_NAME
tmc login --name tmc-se-org --no-configure
tmc cluster attach  --cluster-group "$CLUSTER_GROUP" --name "$CLUSTER_NAME" 
kubectl apply -f k8s-attach-manifest.yaml
