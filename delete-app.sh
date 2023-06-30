kubectl delete deployment store-v2 --namespace gcp-test
kubectl delete service store-v2 --namespace gcp-test
kubectl delete httproute store-v2 --namespace gcp-test
kubectl delete healthcheckpolicy store-v2 --namespace gcp-test