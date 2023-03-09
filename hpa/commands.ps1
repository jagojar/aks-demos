# autoscale command
kubectl autoscale deployment azure-vote-front --cpu-percent=50 --min=3 --max=10

# scale nodes
az aks scale --resource-group myResourceGroup --name myAKSCluster --node-count 3