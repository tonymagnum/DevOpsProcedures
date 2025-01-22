# Minikube

Minikube runs all Pods on one Node

However they are seperated Logically

This is not a problem because the **Scheduler** takes care of assigning Pods to Nodes

When running minikube you might need to switch to Minikube Docker Daemon with
```bash
    eval $(minikube docker-env)
```
To reverse it use
```bash
    eval $(minikube docker-env --unset)
```