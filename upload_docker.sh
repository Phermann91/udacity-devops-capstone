# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="phermann91/devopscapstone"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag devopscapstone $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath
