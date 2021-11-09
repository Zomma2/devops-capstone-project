curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz 
chmod +x ./eksctl
echo "Checking eksctl version..."
./eksctl version
echo "eksctl installed ........Sucess" 
