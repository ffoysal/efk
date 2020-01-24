# efk

ElasticSearch fluent-bit kibana installation in kubernetes

## Prerequisite

- [helm](https://helm.sh/) need to be installed locally.

There script [setup-fluent-bit-es-kibana.sh](setup-fluent-bit-es-kibana.sh) will create a new namespace *logging* and install **efk** stack in the kubernetes cluster.

The script [delete-fluent-bit-es-kibana](delete-fluent-bit-es-kibana.sh) delete the stack as well as namespace.

For [fluent-bit](https://fluentbit.io/) configuration have a look at [this](fluent-bit-configmap.yaml) file.

The [daemonset](fluent-bit-ds-minkube.yaml) is optimized for **minikube**
