# shipper-kubesphere
shipper的kubesphere扩展组件

### 打包模板

```
helm package ./oci_tempstore/builtin/
```

### 推送模板到OCIRegistry

```
helm push builtin-0.1.0.tgz  --insecure-skip-tls-verify  oci://hub.cloud.lingbohome.com/shipper/template-store
```


