# flnpw/fluxctl

This repo has fluxctl installed for using on multilayer builds, as a installer or
as is.

## How to use

Using this image in a multilayered Dockerfile and fetching fluxctl from it:
```
FROM flnpw/fluxctl AS fluxctl
...
FROM myimage
...
COPY --from=fluxctl /usr/local/bin/fluxctl /<wherever>/fluxctl
...
```

Using this image as a local installer:
```
docker run --rm -ti \
  --entrypoint='' \
  -v /usr/local/bin:/target \
  flnpw/fluxctl \
  cp /usr/local/bin/fluxctl /target
```
