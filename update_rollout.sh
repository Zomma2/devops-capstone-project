echo "Update rollout is under-going ............"
./kubectl rollout undo deployment helloapp
echo "Update rollout is done ............."
echo "Pods after rollout is done ............."
./kubectl get pods -o wide
