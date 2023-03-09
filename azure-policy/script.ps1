# Log in first with az login if you're not using Cloud Shell
az aks enable-addons --addons azure-policy --name MyAKSCluster --resource-group MyResourceGroup

#Kusto query
AzureActivity
| where CategoryValue == 'Policy' and ResourceProviderValue == 'MICROSOFT.CONTAINERSERVICE'


kubectl get constrainttemplates

