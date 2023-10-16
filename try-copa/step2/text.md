## Step 2

Next, we'll use Copa to patch the vulnerabilities found in the report.

<br>

### Solution
Copa depends on buildkit to run, so start up a buildkit container for Copa to use

```plain
docker run --detach --rm --privileged --name buildkitd --entrypoint buildkitd moby/buildkit:v0.12.0
```{{exec}}

Next, run the patch command with Copa connecting to the buildkit container that was just created, and passing in the report that was generated in the previous step.

```plain
copa patch -i docker.io/library/nginx:1.21.6 -r nginx.1.21.6.json -t 1.21.6-patched --addr docker-container://buildkitd
```{{exec}}