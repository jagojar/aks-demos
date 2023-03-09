$rgName = "aks-demo-rg"
$aksName = "juan-osorio-demo-aks"
$nodePoolName = "nodepool1"


# list of upgrades
az aks get-upgrades --resource-group $rgName --name $aksName --output table

# Set max surge for a new node pool
az aks nodepool add -n $nodePoolName -g $rgName --cluster-name $aksName --max-surge 33%

$newVersion = "1.19.1"

# Upgrade
az aks upgrade \
    --resource-group $rgName \
    --name $aksName \
    --kubernetes-version $newVersion