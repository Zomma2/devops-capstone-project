curl -sSLo ./kubectl "https://dl.k8s.io/release/$(curl -L -s \https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
echo "Checking eksctl version..."
./kubectl version
echo "eksctl installed ........Sucess" 