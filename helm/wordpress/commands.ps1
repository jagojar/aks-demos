# Add Azure Marketplace repo
helm repo add azure-marketplace https://marketplace.azurecr.io/helm/v1/repo

#Install wordpress in default namespace
helm install wordpress azure-marketplace/wordpress

#Get credentials for admin page
echo Username: user
$passbase64 = kubectl get secret --namespace default wordpress -o jsonpath="{.data.wordpress-password}"

#convert $passbase64 with value example RHBiV29rdm5wNw==
$passwordWp = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($passbase64))