In order for Copa to patch a container image, we need a vulnerability report that tells Copa what to patch.

<br>

### Solution
Use Trivy to scan a container image and output a JSON format report

```plain
trivy image --vuln-type os --ignore-unfixed -f json -o nginx.1.21.6.json nginx:1.21.6
```{{exec}}

Take a look at the JSON report file that Trivy created

```plain
cat nginx.1.21.6.json
```{{exec}}