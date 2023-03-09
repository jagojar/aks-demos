# Create a Kubernetes secret
AKS_PERS_STORAGE_ACCOUNT_NAME = "fergusonwscontainersa"
STORAGE_KEY = "i5S9BANQb4dt6JTdOP18akigSkPXZEKjEI90AF4cRTZqhDef/JYn/LgK/zeqfgrcUnLtSLsv1WblMQdaMnS5Lg=="

kubectl create secret generic azure-secret --from-literal=azurestorageaccountname=$AKS_PERS_STORAGE_ACCOUNT_NAME --from-literal=azurestorageaccountkey=$STORAGE_KEY

# Mount the file share as a volume
kubectl apply -f azure-files-pod.yaml

# Describe pod
kubectl describe pod mypod-static

# Interact with pod
kubectl exec -it mypod-static -- bin/sh

# go to mount folder
cd mnt/azure

# create file
echo "from container" > file1.txt

