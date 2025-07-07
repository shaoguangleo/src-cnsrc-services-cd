# gatekeeper

## helm chart package

1. clone code
    * ```shell
      git clone https://gitlab.com/AaronYang2333/ska-src-dm-da-service-gatekeeper.git
      ```
2. package helm chart
    * ```shell
      mkdir -p /tmp/helm-chart
      podman run --rm \
        -v $(pwd)/ska-src-dm-da-service-gatekeeper:/code \
        -v /tmp/helm-chart:/code/.build/chart \
        -it m.daocloud.io/docker.io/alpine/k8s:1.29.4 \
        helm package --dependency-update \
          --destination /code/.build/chart \
          /code/etc/helm
      ```
3. push helm chart package
    * ```shell
      podman run --rm \
        -v /tmp/helm-chart:/code/.build/chart \
        -it m.daocloud.io/docker.io/alpine/k8s:1.29.4 \
        helm cm-push \
          /code/.build/chart/ska-src-dm-da-service-gatekeeper-0.2.4.tgz \
          https://chart-museum.internal.ska.zverse.space:32443 \
          --context-path /
      ```

## how to delete a existing chart package and update

```shell
curl -X DELETE https://chart-museum.internal.ska.zverse.space:32443/api/charts/ska-src-dm-da-service-gatekeeper/0.2.4
```
```shell
kubectl -n argocd delete pod argo-cd-argocd-repo-server-...-...
kubectl -n argocd delete pod argo-cd-argocd-redis-...-...
```