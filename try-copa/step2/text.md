Next, we'll use Copa to patch the vulnerabilities found in the report.

<br>

### Solution
Copa depends on buildkit to run, so first create a buildx instance for Copa to use

```plain
docker buildx create --name demo
```{{exec}}

Next, run the patch command with Copa connecting to the buildx instance that was just created, and passing in the report that was generated in the previous step.

```plain
copa patch -i nginx:1.21.6 -r nginx.1.21.6.json -t 1.21.6-patched --addr buildx://demo
```{{exec}}