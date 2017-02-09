kubeadm join --token=d1f88f.5754d925c7b618ed 172.31.34.218

kubectl get pods --all-namespaces
kubectl create namespace sock-shop
kubectl apply -n sock-shop -f "https://github.com/laurentgrangeau/snowcampio/blob/master/kubernetes/complete-demo.yml?raw=true"
kubectl describe svc front-end -n sock-shop
kubectl port-forward $(kubectl get pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}') 4040

# Open tunnel 4040

# Dashboard
kubectl proxy
# Open tunnel 8001