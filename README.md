# gke-java-memory-eater

```shell
export IMAGE_TAG=$GOOGLE_CLOUD_PROJECT-labs/memory-eater
export APPLICATION=memory-eater
envsubst < k8s-deployment.template.yaml > k8s-deployment.yaml
envsubst < skaffold.template.yaml > skaffold.yaml
```