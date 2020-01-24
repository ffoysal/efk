#!/bin/sh
helm delete kibana --purge
helm delete es --purge
#install fluent-bit service account
kubectl delete -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-service-account.yaml

#install fluent-bit role
kubectl delete -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-role.yaml

#install fluent-bit role-binding
kubectl delete -f https://raw.githubusercontent.com/fluent/fluent-bit-kubernetes-logging/master/fluent-bit-role-binding.yaml

kubectl delete namespace logging
