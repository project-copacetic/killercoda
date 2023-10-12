In order for Copa to patch a container image, we need a vulnerability report that tells Copa what to patch.

### Steps
Use Trivy to scan a container image and output a JSON format report

```plain
trivy image --vuln-type os --ignore-unfixed -f json -o nginx.1.21.6.json nginx:1.21.6
```{{exec}}