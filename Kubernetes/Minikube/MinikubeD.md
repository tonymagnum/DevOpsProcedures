## Enable These
```bash
    minikube addons enable registry
    minikube addons enable ingress
    minikube adddons enable dashboard
```

## Registry
Run this in one Terminal
```bash
    docker run --rm -it --network=host alpine ash -c "apk add socat && socat TCP-LISTEN:5000,reuseaddr,fork TCP:host.docker.internal:5000"
```
Run this in another
```bash
    kubectl port-forward --namespace kube-system service/registry 5000:80
```

When you have both running enter this command to Push an image
```bash
    docker build -t localhost:5000/catalog ./catalog-svc
```

## Connect to Ingress
```bash
    minikube tunnel
```

## Dashboard
```bash
    minikube dashboard
```