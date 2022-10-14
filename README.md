A docker image for AWS command line interface:
https://docs.aws.amazon.com/cli/index.html

This image contains AWS session manager:
https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager.html

Install
===

Build the docker image:

```
./build-docker-image.sh
```

Copy `./aws` script somewhere to path e.g. to `/usr/local/bin`

Usage
===

`aws ...`

See https://awscli.amazonaws.com/v2/documentation/api/latest/reference/index.html