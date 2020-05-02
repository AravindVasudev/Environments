# Install docker
echo "Installing docker..."
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common conntrack
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
sudo apt install -y docker-ce

sudo systemctl start docker

# Install Kubectl
echo "Installing kubectl..."
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

# Install Minikube
echo "Install minikube..."
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube
sudo mkdir -p /usr/local/bin/
sudo install minikube /usr/local/bin/

# Start Minikube
echo "Starting minikube..."
sudo minikube start --driver=none

echo "Done. VM is mapped to 192.168.0.2"
