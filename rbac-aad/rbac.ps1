#get add group id
az ad group show -g 'demo-aks-group'--query objectId -o tsv
ex: 90938910-5484-4663-b257-e7714d47f9c5


#create namespaces
kubectl create ns no-access
kubectl create ns delete-access

# deploy app to namespaces
kubectl create -f azure-vote.yaml -n no-access
kubectl create -f azure-vote.yaml -n delete-access




