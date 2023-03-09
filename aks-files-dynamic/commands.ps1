# creates storage class
kubectl apply -f azure-file-sc.yaml

# creates persistent volume claim
kubectl apply -f azure-file-pvc.yaml

# Create the pod with the kubectl apply command
kubectl apply -f azure-pvc-files.yaml

