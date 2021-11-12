echo "Rolling update Started ........"
#./kubectl get deployments -o wide
echo "Rolling update is under-going ........"
#./kubectl set image deployments/helloapp \
#	helloapp=registry.hub.docker.com/omarhazem6/helloapp:latest
echo "Rolling update is complete ........"
#./kubectl get deployments -o wide
echo "Pods is updated ......."
#./kubectl get pods -o wide
