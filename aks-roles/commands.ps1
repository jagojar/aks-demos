
# discovery roles
kubectl get clusterroles system:discovery -o yaml

# Create a Role named "pod-reader" with resourceNames specified
kubectl create role pod-reader --verb=get --resource=pods --resource-name=readablepod --resource-name=anotherpod

# Create a ClusterRole named "pod-reader" with resourceNames specified
kubectl create clusterrole pod-reader --verb=get --resource=pods --resource-name=readablepod --resource-name=anotherpod

# Attach acr to aks
$rgName = "aks-demo-rg"
$aksName = "juan-osorio-demo-aks"
$acrName = "juanoacr"

az aks update -g $rgName  -n $aksName --attach-acr $acrName

