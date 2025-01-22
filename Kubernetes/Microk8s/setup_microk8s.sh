snap install microk8s --classic
microk8s status --wait-ready
microk8s kubectl get node -o wide

microk8s enable dns
microk8s enable storage
microk8s enable dashboard

microk8s dashboard-proxy