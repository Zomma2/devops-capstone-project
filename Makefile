setup:
	# Create a python virtualenv & activate it
	echo "Setup Started..."
	python3 -m venv ~/.capstoneProj
	source ~/.capstoneProj/bin/activate 
setup_no_source:
	echo "Setup Started..."
	python3 -m venv ~/.capstoneProj

python_install:	
	echo "Installation Started..."
	pip install --upgrade pip
	pip install -r requirements.txt
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv app.py
	#python -m pytest 
lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x ./hadolint
	./hadolint dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203 app.py

build_docker :
	chmod +x build_docker.sh
	./build_docker.sh

run_docker :
	chmod +x build_docker.sh
	./build_docker.sh
	docker run -p 8000:80 helloapp

upload_docker : 
	chmod +x upload_docker.sh
	./upload_docker.sh

install_kub_and_mini :
	chmod +x install_minikube.sh
	./install_minikube.sh
	chmod +x install_kubernetes.sh
	./install_kubernetes.sh

install_eks : 	
	chmod +x install_eksctl.sh
	./install_eksctl.sh

kub_deploy :
	chmod +x kubernetes_deploy.sh
	minikube start 
	./kubernetes_deploy.sh
	
kub_deploy_force_1_cpu :
	chmod +x kubernetes_deploy.sh
	minikube start --extra-config=kubeadm.ignore-preflight-errors=NumCPU --force --cpus 1
	./kubernetes_deploy.sh
	
eks_cluster_init : 
	chmod +x cluster_eks_init.sh
	./cluster_eks_init.sh
	
deploy_cluster : 
	chmod +x deploy_cluster.sh
	./deploy_cluster.sh

rolling_update : 
	chmod +x rolling_updating.sh
	./rolling_updating.sh
	
update_rollout :
	chmod +x update_rollout.sh
	./update_rollout.sh
