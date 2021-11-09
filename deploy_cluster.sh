echo "Before Cluster deployment ....."
./kubectl get deployments -o wide
./kubectl create deployment helloapp --image=registry.hub.docker.com/omarhazem6/helloapp --replicas=4 && ./kubectl expose deployment/helloapp --type="LoadBalancer" --port 80
echo "After Cluster deployment ....."
./kubectl get deployments -o wide
./kubectl port-forward service/helloapp 8000:80