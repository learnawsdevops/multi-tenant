TENANT_NAME=tenant2
NAMESPACE=$TENANT_NAME

kubectl create ns $NAMESPACE --dry-run=client -o yaml | kubectl apply -f -

helm upgrade --install $TENANT_NAME ../helm-chart \
  -n $NAMESPACE \
  -f values.yaml