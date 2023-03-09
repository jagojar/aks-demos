$Namespace = 'ingress-basic'

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx `
  --create-namespace `
  --namespace $Namespace `
  --set controller.service.annotations."service\.beta\.kubernetes\.io/azure-load-balancer-health-probe-request-path"=/healthz

 kubectl apply -f .\aks-helloworld-one.yaml
 kubectl apply -f .\aks-helloworld-two.yaml
 kubectl apply -f .\hello-world-ingress.yaml