#! /bin/sh

# Create logging namespace
kubectl create namespace logging

helm init

#install fluent-bit service account
kubectl create -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-service-account.yaml

#install fluent-bit role
kubectl create -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-role.yaml

#install fluent-bit role-binding
kubectl create -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-role-binding.yaml

#create configmap for fluent-bit
#kubectl create -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/output/elasticsearch/fluent-bit-configmap.yaml
kubectl create -f fluent-bit-configmap.yaml

#install fluent-bit daemonset
#kubectl create -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/output/elasticsearch/fluent-bit-ds-minikube.yaml
kubectl create -f fluent-bit-ds-minkube.yaml

#install elastic search
helm install --name es stable/elasticsearch --set client.serviceType=LoadBalancer --namespace logging

#install kibana
helm install stable/kibana --name kibana --set service.type=LoadBalancer --set service.externalPort=5602 --set env.ELASTICSEARCH_HOSTS=http://es-elasticsearch-client:9200 --namespace logging
