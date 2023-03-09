# Docker
docker run -d --name mynginx -p 8091:80 mynginx
docker inspect mynginx
docker logs mynginx
docker stats mynginx
docker exec -it mynginx /bin/sh

docker events
docker create --name test alpine:latest top
docker start test
docker stop test
docker events --filter 'event=stop'
docker start test
docker stop test

# Kubernetes
kubectl run nginx123 --image=nginx --port=80
kubectl describe pod nginx123
kubectl logs nginx123
#kubectl exec --stdin --tty shell-demo -- /bin/bash
kubectl exec -it nginx123 -- /bin/bash
kubectl get events
kubectl top nodes
kubectl top pods

