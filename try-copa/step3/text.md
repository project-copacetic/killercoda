## Step 3

Finally, take a look at the newly patched image.

### Solution
Use the Docker history command to see the new patch layer that Copa created

```plain
docker image history docker.io/library/nginx:1.21.6-patched
```{{exec}}