# Installation de ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install nginx ingress-nginx/ingress-nginx

# Vérifier que tout tourne bien
kubectl get pods -n default
kubectl get svc -n default

# Installation de kubecost
helm repo add kubecost https://kubecost.github.io/cost-analyzer/
helm repo update

helm install kubecost kubecost/cost-analyzer --namespace kubecost --create-namespace

# Vérifier que tout fonctionne bien
kubectl get pods -n kubecost