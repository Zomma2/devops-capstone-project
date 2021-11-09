# Create dockerpath
dockerpath="omarhazem6/helloapp"

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag helloapp $dockerpath

# Push image to a docker repository
docker image push $dockerpath