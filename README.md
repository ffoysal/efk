# efk

ElasticSearch fluent-bit kibana installation in kubernetes

## Prerequisite

- [helm](https://helm.sh/) need to be installed locally.

The script [setup-fluent-bit-es-kibana.sh](setup-fluent-bit-es-kibana.sh) will create a new namespace *logging* and install **efk** stack in the kubernetes cluster.

```bash
./setup-fluent-bit-es-kibana.sh
```

The script [delete-fluent-bit-es-kibana.sh](delete-fluent-bit-es-kibana.sh) delete the stack as well as namespace.

```bash
./delete-fluent-bit-es-kibana.sh
```

For [fluent-bit](https://fluentbit.io/) configuration have a look at [this](fluent-bit-configmap.yaml) file.

The [daemonset](fluent-bit-ds-minkube.yaml) is optimized for **minikube**
